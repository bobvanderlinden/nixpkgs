{
  config,
  lib,
  pkgs,
  utils,
}: let
  mountModule' = name: module: {config, ...} @ args: let
    moduleInstance = module (args // {config = config.${name};});
  in {
    options.${name} = moduleInstance.options;
    config.${name} = moduleInstance.config;
  };

  mountModule = names: module: lib.foldr mountModule' module names;

  inherit (utils.systemdUtils.lib) generateUnits makeUnit unitConfig mountConfig automountConfig;
  inherit (utils.systemdUtils.unitOptions) concreteUnitOptions mountOptions automountOptions;
in
  with lib; rec {
    mkUnitTypeModule = {
      name,
      extension,
      subOptions,
      extraConfigs ? [],
      toUnit,
      description,
    }: {config, ...}: {
      options = {
        "${name}" = mkOption {
          default = {};
          type = with types; attrsOf (submodule ([{options = subOptions;} unitConfig] ++ extraConfigs));
          description = description;
        };
      };

      config = {
        units =
          mapAttrs' (n: v: nameValuePair "${n}${extension}" (toUnit n v)) config.${name};
      };
    };

    mkModules = {
      title,
      type,
      upstreamUnits ? [],
      upstreamWants ? [],
      suppressedUnits ? [],
      mount ? [],
    }:
      mapAttrs (name: module: mountModule mount module) {
        units = {config, ...}: {
          options = {
            units = mkOption {
              description = "Definition of ${title} units.";
              default = {};
              type = with types;
                attrsOf (submodule (
                  {
                    name,
                    config,
                    ...
                  }: {
                    options = concreteUnitOptions;
                    config = {
                      unit = mkDefault (makeUnit name config);
                    };
                  }
                ));
            };

            unitsSource = mkOption {
              internal = true;
              visible = false;
              type = types.path;
            };

            upstreamUnits = mkOption {
              type = with types; listOf str;
              default = upstreamUnits;
            };

            upstreamWants = mkOption {
              type = with types; listOf str;
              default = upstreamWants;
            };
          };

          config = {
            unitsSource = let
              enabledUpstreamUnits = filter (n: !elem n suppressedUnits) config.upstreamUnits;
              enabledUnits = filterAttrs (n: v: !elem n suppressedUnits) config.units;
            in
              generateUnits type enabledUnits enabledUpstreamUnits config.upstreamWants;
          };
        };

        targets = mkUnitTypeModule {
          name = "targets";
          extension = ".target";
          subOptions = utils.systemdUtils.unitOptions.targetOptions;
          toUnit = utils.systemdUtils.lib.targetToUnit;
          description = "Definition of ${title} target units.";
        };

        services = mkUnitTypeModule {
          name = "services";
          extension = ".service";
          subOptions = utils.systemdUtils.unitOptions.serviceOptions;
          extraConfigs = [utils.systemdUtils.lib.serviceConfig];
          toUnit = utils.systemdUtils.lib.serviceToUnit;
          description = "Definition of ${title} service units.";
        };

        sockets = mkUnitTypeModule {
          name = "sockets";
          extension = ".socket";
          subOptions = utils.systemdUtils.unitOptions.socketOptions;
          toUnit = utils.systemdUtils.lib.socketToUnit;
          description = "Definition of ${title} socket units.";
        };

        timers = mkUnitTypeModule {
          name = "timers";
          extension = ".timer";
          subOptions = utils.systemdUtils.unitOptions.timerOptions;
          toUnit = utils.systemdUtils.lib.timerToUnit;
          description = "Definition of ${title} timer units.";
        };

        paths = mkUnitTypeModule {
          name = "paths";
          extension = ".path";
          subOptions = utils.systemdUtils.unitOptions.pathOptions;
          toUnit = utils.systemdUtils.lib.pathToUnit;
          description = "Definition of ${title} path units.";
        };

        slices = mkUnitTypeModule {
          name = "slices";
          extension = ".slice";
          subOptions = utils.systemdUtils.unitOptions.sliceOptions;
          extraConfigs = [utils.systemdUtils.lib.sliceConfig];
          toUnit = utils.systemdUtils.lib.sliceToUnit;
          description = "Definition of ${title} slice configurations.";
        };

        mounts = {config, ...}: {
          options.mounts = mkOption {
            default = [];
            type = with types; listOf (submodule [{options = mountOptions;} unitConfig mountConfig]);
            description = ''
              Definition of ${title} mount units.
              This is a list instead of an attrSet, because systemd mandates the names to be derived from
              the 'where' attribute.
            '';
          };

          config.units = listToAttrs (map (v: let n = escapeSystemdPath v.where; in nameValuePair "${n}.mount" (mountToUnit n v)) config.mounts);
        };

        automounts = {config, ...}: {
          options.automounts = mkOption {
            default = [];
            type = with types; listOf (submodule [{options = automountOptions;} unitConfig automountConfig]);
            description = ''
              Definition of ${title} automount units.
              This is a list instead of an attrSet, because systemd mandates the names to be derived from
              the 'where' attribute.
            '';
          };

          config.units = listToAttrs (map (v: let n = escapeSystemdPath v.where; in nameValuePair "${n}.automount" (automountToUnit n v)) config.automounts);
        };
      };
  }
