{
  inputs,
  pkgs,
  ...
}: let
  spicePkgs = inputs.spicetify.legacyPackages.${pkgs.system};
in {
  imports = [inputs.spicetify.homeManagerModules.default];
  programs.spicetify = {
    enable = true;
    enabledCustomApps = with spicePkgs.apps; [
      lyricsPlus
      newReleases
    ];

    enabledExtensions = with spicePkgs.extensions; [
      autoSkipVideo
      shuffle
      popupLyrics

      fullAppDisplayMod
      hidePodcasts
      history
      adblock
      playlistIcons
      autoSkip
    ];
  };
}
