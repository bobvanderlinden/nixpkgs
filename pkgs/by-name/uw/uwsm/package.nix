{
  stdenv,
  lib,
  fetchFromGitHub,
  makeWrapper,
  makeBinaryWrapper,
  meson,
  ninja,
  scdoc,
  pkg-config,
  fetchpatch,
  nix-update-script,
  coreutils,
  bash,
  dmenu,
  libnotify,
  newt,
  python3Packages,
  systemd,
  util-linux,
  fumonSupport ? true,
  uuctlSupport ? true,
  uwsmAppSupport ? true,
}:
let
  python = python3Packages.python.withPackages (ps: [
    ps.pydbus
    ps.dbus-python
    ps.pyxdg
  ]);
in
stdenv.mkDerivation (finalAttrs: {
  pname = "uwsm";
  version = "0.26.4";

  src = fetchFromGitHub {
    owner = "Vladimir-csp";
    repo = "uwsm";
    tag = "v${finalAttrs.version}";
    hash = "sha256-hsuLerOQONc2CMywQWKO8wbFMf2lVQlF0eEx3O6oD7s=";
  };

  nativeBuildInputs = [
    makeWrapper
    makeBinaryWrapper
    meson
    ninja
    pkg-config
    scdoc
  ];

  buildInputs = [
    coreutils # tr, rm, env, ls, id
    util-linux # waitpid
    newt # whiptail
    libnotify # notify-send
    bash # sh
    systemd
    python
  ]
  ++ lib.optionals uuctlSupport [ dmenu ];

  mesonFlags = [
    "--prefix=${placeholder "out"}"
  ]
  ++ (lib.mapAttrsToList lib.mesonEnable {
    "uwsm-app" = uwsmAppSupport;
    "fumon" = fumonSupport;
    "uuctl" = uuctlSupport;
    "man-pages" = true;
    "canonicalize-bins" = true;
  })
  ++ (lib.mapAttrsToList lib.mesonOption {
    "python-bin" = python.interpreter;
  });

  postInstall =
    let
      wrapperArgs = "--suffix PATH : ${lib.makeBinPath finalAttrs.buildInputs}";
    in
    ''
      wrapProgramBinary $out/bin/uwsm ${wrapperArgs}
      wrapProgramShell $out/libexec/uwsm/prepare-env.sh ${wrapperArgs}
      wrapProgramShell $out/libexec/uwsm/signal-handler.sh ${wrapperArgs}
    ''
    + lib.optionalString uuctlSupport ''
      wrapProgramBinary $out/bin/uuctl ${wrapperArgs}
    ''
    + lib.optionalString uwsmAppSupport ''
      wrapProgramBinary $out/bin/uwsm-app ${wrapperArgs}
    ''
    + lib.optionalString fumonSupport ''
      wrapProgramBinary $out/bin/fumon ${wrapperArgs}
    '';

  outputs = [
    "out"
    "man"
  ];

  passthru = {
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Universal wayland session manager";
    homepage = "https://github.com/Vladimir-csp/uwsm";
    changelog = "https://github.com/Vladimir-csp/uwsm/releases/tag/v${finalAttrs.version}";
    mainProgram = "uwsm";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      johnrtitor
      kai-tub
    ];
    platforms = lib.platforms.linux;
  };
})
