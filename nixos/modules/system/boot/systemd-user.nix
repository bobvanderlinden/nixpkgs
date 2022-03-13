{
  config,
  lib,
  pkgs,
  utils,
  ...
}:
with utils;
with systemdUtils.unitOptions;
with lib; let
  cfg = config.systemd.user;

  systemd = config.systemd.package;

  inherit
    (systemdUtils.lib)
    makeUnit
    generateUnits
    makeJobScript
    unitConfig
    serviceConfig
    commonUnitText
    targetToUnit
    serviceToUnit
    socketToUnit
    timerToUnit
    pathToUnit
    ;

  upstreamUserUnits =
    [
      "app.slice"
      "background.slice"
      "basic.target"
      "bluetooth.target"
      "default.target"
      "exit.target"
      "graphical-session-pre.target"
      "graphical-session.target"
      "paths.target"
      "printer.target"
      "session.slice"
      "shutdown.target"
      "smartcard.target"
      "sockets.target"
      "sound.target"
      "systemd-exit.service"
      "timers.target"
      "xdg-desktop-autostart.target"
    ]
    ++ config.systemd.additionalUpstreamUserUnits;
in {
  options = {
    systemd.user.extraConfig = mkOption {
      default = "";
      type = types.lines;
      example = "DefaultCPUAccounting=yes";
      description = ''
        Extra config options for systemd user instances. See man systemd-user.conf for
        available options.
      '';
    };

    systemd.additionalUpstreamUserUnits = mkOption {
      default = [];
      type = types.listOf types.str;
      example = [];
      description = ''
        Additional user units shipped with systemd that shall be enabled.
      '';
    };
  };

  ###### implementation

  config = {
    systemd.additionalUpstreamSystemUnits = [
      "user.slice"
    ];

    environment.etc = {
      "systemd/user".source = cfg.unitsSource;

      "systemd/user.conf".text = ''
        [Manager]
        ${cfg.extraConfig}
      '';
    };

    # Generate timer units for all services that have a ‘startAt’ value.
    systemd.user.timers =
      mapAttrs (name: service: {
        wantedBy = ["timers.target"];
        timerConfig.OnCalendar = service.startAt;
      })
      (filterAttrs (name: service: service.startAt != []) cfg.services);

    # Provide the systemd-user PAM service, required to run systemd
    # user instances.
    security.pam.services.systemd-user = {
      # Ensure that pam_systemd gets included. This is special-cased
      # in systemd to provide XDG_RUNTIME_DIR.
      startSession = true;
    };

    # Some overrides to upstream units.
    systemd.services."user@".restartIfChanged = false;
    systemd.services.systemd-user-sessions.restartIfChanged = false; # Restart kills all active sessions.
  };

  imports = (with (import ./../../../lib/systemd-submodules.nix {inherit config lib pkgs utils;}).mkModules {
    title = "systemd per-user";
    type = "user";
    upstreamUnits = upstreamUserUnits;
    mount = ["systemd" "user"];
  }; [
    units
    paths
    services
    slices
    sockets
    targets
    timers
  ]);
}
