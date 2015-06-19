{ fetchbower, buildEnv }:
buildEnv { name = "bower-env"; ignoreCollisions = true; paths = [
  (fetchbower "videojs-youtube" "1.1.0" "1.1.0" "1dc5pw7rqsx1ym2phw41k95sp068l79493agph8h6i4zs65qlfgi")
  (fetchbower "mousetrap" "1.4.6" "~1.4.6" "1qjj3xxr8n42pz2vz01szwwd1y6ya0wgkf85p0vrzkpwpfrbq2za")
  (fetchbower "marionette" "1.8.8" "~1.8.3" "0hxgs431xz1k1s228ylq964k4cc9p1gid6yqdqk9kjdzzziz2shi")
  (fetchbower "font-awesome" "4.1.0" "~4.1.0" "1jsvz3lwbn7mcmlx999c5kmjg641bca9d2nw4i99h2szzv6ak7cs")
  (fetchbower "videojs" "4.6.1" "4.6.1" "0x0bvv4bcx340ac7pf78rhmpnazc4whykmc2x6mp902myi8a4z9p")
  (fetchbower "bootstrap" "3.1.1" "~3.1.1" "0ml5nk65740qvnlwqn6mm3dzfi95bsp309l5p9mks0c37fw6fk66")
  (fetchbower "backbone" "1.1.2" "1.0.0 - 1.1.2" "1griap80s0nscf29mhwy936hdxf05i9504cqbk1cahssvh98hwd1")
  (fetchbower "jquery" "2.1.4" ">= 1.9.0" "198dwgq8dc30hrslmn9cgc7nl9qs8nhcfjicijx6hpr5gqfl34z3")
  (fetchbower "underscore" "1.6.0" "1.4.4 - 1.6.0" "1l8ikrnzxg9bp17axlay6v12vv32hyhgkciaimpg84xy9jkizbhy")
  (fetchbower "backbone.babysitter" "0.1.8" "^0.1.0" "13jfkc47hvgz6by6vxkdnbsz1rzii5hxwlqdv0v1viz7j4bq1nds")
  (fetchbower "backbone.wreqr" "1.3.3" "^1.0.0" "1fl3pznrf27qzxh47zflszs3hrvpfp7fr6iivnhgd457rr3xpyvx")
]; }
