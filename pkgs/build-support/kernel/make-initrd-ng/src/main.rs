use std::collections::{HashSet, VecDeque};
use std::ffi::OsStr;
use std::fs;
use std::hash::Hash;
use std::io::{BufReader, BufRead, Error, ErrorKind};
use std::path::{Path, PathBuf, Component};
use std::process::{Command, Stdio};
use std::io::{Read};
use std::io;

struct Context {
    handle_queue: NonRepeatingQueue<Box<Path>>,
    seen_output: HashSet<Box<Path>>,
}

impl Context {
    fn new() -> Context {
        Context {
            handle_queue: NonRepeatingQueue::new(),
            seen_output: HashSet::new(),
        }
    }

    fn queue(&mut self, path: &Path) {
        self.handle_queue.push_back(Box::from(resolve_path(path)));
    }

    fn dequeue(&mut self) -> Option<Box<Path>> {
        self.handle_queue.pop_front()
    }

    fn output(&mut self, path: &Path) {
        let mut output_path = PathBuf::new();
        for component in path.components() {
            match component {
                Component::RootDir => {
                    // For CPIO we need to output relative paths.
                    // Ignore the RootDir.
                    continue;
                }
                Component::Normal(name) => {
                    output_path.push(name);


                    if self.seen_output.insert(Box::from(output_path.as_path())) {
                        if let Some(output_path_str) = output_path.to_str() {
                                println!("{}", output_path_str);
                        }
                    }
                }
                _ => {
                    panic!("Path component {:?} cannot be used in output path {:?}", component, path);
                }
            }
        }
    }
}


struct NonRepeatingQueue<T> {
    queue: VecDeque<T>,
    seen: HashSet<T>,
}

impl<T> NonRepeatingQueue<T> {
    fn new() -> NonRepeatingQueue<T> {
        NonRepeatingQueue {
            queue: VecDeque::new(),
            seen: HashSet::new(),
        }
    }
}

impl<T: Clone + Eq + Hash> NonRepeatingQueue<T> {
    fn push_back(&mut self, value: T) -> bool {
        if self.seen.contains(&value) {
            false
        } else {
            self.seen.insert(value.clone()); // TODO: Is cloning dumb?
            self.queue.push_back(value);
            true
        }
    }

    fn pop_front(&mut self) -> Option<T> {
        self.queue.pop_front()
    }
}

fn patch_elf<S: AsRef<OsStr>, P: AsRef<OsStr>>(mode: S, path: P) -> Result<String, Error> {
    let output = Command::new("patchelf")
        .arg(&mode)
        .arg(&path)
        .stderr(Stdio::inherit())
        .output()?;
    if output.status.success() {
        Ok(String::from_utf8(output.stdout).expect("Failed to parse output"))
    } else {
        Err(Error::new(ErrorKind::Other, format!("failed: patchelf {:?} {:?}", OsStr::new(&mode), OsStr::new(&path))))
    }
}

fn handle_elf_file(path: &Path, context: &mut Context) -> Result<(), Error> {
    // Not needed to check this using a separate command. ELF has already been checked.
    // // If it's not a dynamically linked ELF file, we're done.
    // if !Command::new("ldd").arg(&path).output()?.status.success() {
    //     return Ok(());
    // }

    let rpath_string = patch_elf("--print-rpath", &path)?;
    let needed_string = patch_elf("--print-needed", &path)?;
    // Shared libraries don't have an interpreter
    if let Ok(interpreter_string) = patch_elf("--print-interpreter", &path) {
        context.queue(Path::new(&interpreter_string.trim()));
    }

    let rpath = rpath_string
        .trim()
        .split(":")
        .map(|p| Box::<Path>::from(Path::new(p)))
        .collect::<Vec<_>>();

    for line in needed_string.lines() {
        let mut found = false;
        for path in &rpath {
            let lib = path.join(line);
            if lib.exists() {
                // No need to recurse. The queue will bring it back round.
                context.queue(lib.as_path());
                found = true;
                break;
            }
        }
        if !found {
            // glibc makes it tricky to make this an error because
            // none of the files have a useful rpath.
            eprintln!("Warning: Couldn't satisfy dependency {} for {:?}", line, OsStr::new(&path));
        }
    }

    Ok(())
}

fn is_path_char(c: char) -> bool {
    c.is_alphanumeric() || c == std::path::MAIN_SEPARATOR || c == '-' || c == '_' || c == '.'
}

fn is_base32_char(c: char) -> bool {
    c.is_numeric() || c >= 'a' && c <= 'z' && c != 'e' && c != 'o' && c != 't' && c != 'u'
}

fn handle_raw_file(
    path: &Path,
    context: &mut Context
) -> Result<(), Error> {
    let nix_store_pattern: Vec<char> = "/nix/store/XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX".chars().collect();

    let file = fs::File::open(path)?;
    let reader = BufReader::new(file);
    let mut bytes = reader.bytes().map(|result| result.map(|b| b as char));

    'find_start_of_path: while let Some(Ok(starter)) = bytes.next() {
        if is_path_char(starter as char) {
            continue
        }
        let mut pending_path: Vec<char> = vec![];
        let mut matcher_index = 0;
        'match_nix_store_pattern: loop {
            match bytes.next() {
                Some(Ok(b)) => {
                    let c = b as char;
                    let pattern_char = nix_store_pattern[matcher_index];
                    let matches_pattern =
                        if pattern_char == 'X' {
                            is_base32_char(c)
                        } else {
                            pattern_char == c
                        };
                    if !matches_pattern {
                        if matcher_index > 0 {
                            //eprintln!("matching: {:?} == {:?}? {:?}", c, pattern_char, matches_pattern);
                        }
                        continue 'find_start_of_path
                    }
                    //eprintln!("matching: {:?} == {:?}? {:?}", c, pattern_char, matches_pattern);
                    pending_path.push(c);
                    matcher_index = matcher_index + 1;
                    if matcher_index == nix_store_pattern.len() {
                        //eprintln!("full pattern matched!");
                        break 'match_nix_store_pattern
                    }
                }
                None => {
                    // End of stream, didn't finish matching nixStorePattern.
                    //eprintln!("End of stream before matching pattern!");
                    break 'find_start_of_path
                }
                Some(Err(e)) => {
                    // Problem reading the stream. Skip this file.
                    return Err(e)
                }
            }
        }

        //eprintln!("found pattern! {:?}", matcher_index);

        'find_end_of_path: loop {
            match bytes.next() {
                Some(Ok(b)) => {
                    let c = b as char;
                    if is_path_char(c) {
                        //eprintln!("matching rest: {:?}", c);
                        pending_path.push(c)
                    } else {
                        break 'find_end_of_path
                    }
                }
                None => {
                    break 'find_end_of_path
                }
                Some(Err(e)) => {
                    // Problem reading the stream. Skip this file.
                    return Err(e)
                }
            }
        }
        let found_path_str: String = pending_path.iter().collect();
        let found_path = Path::new(&found_path_str);
        // eprintln!("found: {:?}", found_path);
        context.queue(found_path);
    }

    Ok(())
}

fn is_elf_file(path: &Path) -> Result<bool, Error> {
    let mut file = fs::File::open(path)?;
    let mut buffer = [0; 4];
    let size = file.read(&mut buffer[..])?;
    if size < buffer.len() {
        return Ok(false)
    }
    Ok(buffer == [0x7f, 0x45, 0x4c, 0x46])
}

fn handle_file(
    path: &Path,
    context: &mut Context,
) -> Result<(), Error> {
    if is_elf_file(path)? {
        handle_elf_file(path, context)
    } else {
        handle_raw_file(path, context)
    }
}

fn handle_dir(
    path: &Path,
    context: &mut Context,
) -> Result<(), Error> {
    for entry in fs::read_dir(path)? {
        let entry = entry?;
        // No need to recurse. The queue will bring us back round here on its own.
        context.queue(path.join(entry.path()).as_path());
    }

    Ok(())
}

fn resolve_path(path: &Path) -> PathBuf {
    let mut result: PathBuf = PathBuf::new();
    for component in path.components() {
        match component {
            Component::Prefix(_) => {
                panic!("Path prefix component not supported!");
            }
            Component::RootDir => {
                result.clear();
                result.push(std::path::MAIN_SEPARATOR.to_string());
            }
            Component::ParentDir => {
                result.pop();
            }
            Component::CurDir => {
                // Skip it.
            }
            Component::Normal(name) => {
                result.push(name);
            }
        }
    }
    result
}

fn resolve(cwd: &Path, relative: &Path) -> PathBuf {
    let mut result = cwd.to_path_buf();
    for component in relative.components() {
        match component {
            Component::Prefix(_) => {
                panic!("Path prefix component not supported!");
            }
            Component::RootDir => {
                result.clear();
                result.push(std::path::MAIN_SEPARATOR.to_string());
            }
            Component::ParentDir => {
                result.pop();
            }
            Component::CurDir => {
                // Skip it.
            }
            Component::Normal(name) => {
                result.push(name);
            }
        }
    }
    result
}

fn handle_symlink(path: &Path, context: &mut Context) -> Result<(), Error> {
    let link_target = fs::read_link(&path)?;
    let link_path = resolve(path.parent().unwrap_or(path), link_target.as_path());
    eprintln!("Resolving {:?} from {:?} resulting in {:?}", link_target, path, link_path);
    context.queue(link_path.as_path());
    Ok(())
}

fn handle_path(
    path: &Path,
    context: &mut Context,
) -> Result<(), Error> {
    let attr = fs::symlink_metadata(path)?;
    let typ = attr.file_type();
    if typ.is_file() {
        context.output(path);
        handle_file(path, context)
    } else if typ.is_symlink() {
        context.output(path);
        handle_symlink(path, context)
    } else if typ.is_dir() {
        handle_dir(path, context)?;
        Ok(())
    } else {
        Ok(())
    }
}

fn main() -> Result<(), Error> {
    let mut context = Context::new();

    for line in BufReader::new(io::stdin().lock()).lines() {
        let line = line?;
        if line.is_empty() {
            continue
        }
        let path = Path::new(&line);
        context.queue(path);
    }
    while let Some(path) = context.dequeue() {
        if let Err(err) = handle_path(&*path, &mut context) {
            eprintln!("Error {:?}: {}", &*path, err)
        }
    }

    Ok(())
}
