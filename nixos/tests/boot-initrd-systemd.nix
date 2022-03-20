import ./make-test-python.nix ({ pkgs, ... }: {
  name = "boot-initrd-systemd";

  machine = { config, pkgs, lib, ... }: {
    boot.initrd.systemd.enable = true;
    boot.initrd.systemd.services.initrd-switch-root.serviceConfig.ExecStart = "systemctl --no-block switch-root /sysroot ${config.systemd.package}/lib/systemd/systemd";
    boot.initrd.systemd.services.emergency.environment.SYSTEMD_SULOGIN_FORCE = "1";
    boot.initrd.systemd.emergencyPackages = config.system.fsPackages;
    boot.kernelParams = [
      # "rd.emergency"
      "systemd.log_level=info"
      "systemd.journald.forward_to_console=1"
      "systemd.log_target=console"
      "console=ttyS0,38400"
      "console=tty1"
    ];
  };

  testScript = ''
    machine.start()
    machine.wait_until_tty_matches(1, "Press Enter to continue")
  '';
})
