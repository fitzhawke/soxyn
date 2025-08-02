{
  config,
  lib,
  ...
}: {
  stylix.targets.foot.enable = false;

  programs.foot = {
    enable = true;

    settings = {
      main = lib.mkMerge [
        {
          term = "xterm-256color";
        }
        (with config.stylix.fonts; {
          font = "${monospace.name}:size=${toString sizes.terminal}";
        })
      ];

      colors = with config.lib.stylix.colors; {
        cursor = "${base00} ${base05}";
        foreground = "${base05}";
        background = "${base00}";

        regular0 = "${base02}";
        regular1 = "${base08}";
        regular2 = "${base0C}";
        regular3 = "${base09}";
        regular4 = "${base0B}";
        regular5 = "${base0D}";
        regular6 = "${base0A}";
        regular7 = "${base00}";

        bright0 = "${base04}";
        bright1 = "${base08}";
        bright2 = "${base0B}";
        bright3 = "${base0A}";
        bright4 = "${base0D}";
        bright5 = "${base0E}"; # base17
        bright6 = "${base0C}";
        bright7 = "${base07}"; # subtext0
      };
    };
  };
}
