{ config, pkgs, ... }:

{
  home.username = "neiesc";
  home.homeDirectory = "/home/neiesc";

  home.stateVersion = "26.05";

  programs.fish.enable = true;

  programs.git = {
    enable = true;

    settings = {
      user.name = "Edinei Cavalcanti";
      user.email = "hi@edinei.dev";
      init.defaultBranch = "main";
    };
  };

  programs.foot.enable = true;

  home.packages = with pkgs; [
    fuzzel
    waybar
    mako
  ];

  xdg.configFile."niri/config.kdl".source =
    ./niri/config.kdl;
}
