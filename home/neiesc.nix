{ config, pkgs, ... }:

{
  home.username = "neiesc";
  home.homeDirectory = "/home/neiesc";

  home.stateVersion = "26.05";

  programs.fish = {
      enable = true;

      shellAliases = {
        # Git & GitHub
        g = "git";
        gs = "git status";
        gc = "git commit -m";
        gpull = "git pull";
        gswitch = "git switch";
        gk = "gitk";
        gg = "git gui";

        # Neovim
        v = "nvim";
        vi = "nvim";
        vim = "nvim";

        # ls / eza
        ls = "eza --icons";
        l = "ls -lh";
        ll = "ls -lah";
        la = "ls -la";
        lm = "ls -m";
        lr = "ls -R";
        lg = "ls -l --group-directories-first";

        # Zen
        breath = "zenta now --quick";
        breathe = "zenta now";
        reflect = "zenta reflect";
      };
    };

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
    eza
    fuzzel
    waybar
    mako
    gcr
    element-desktop
    davinci-resolve
    handbrake
    spotify
    gimp
    krita
    pinta
    blender
    aseprite
    gnome-network-displays
    catt
    yt-dlp
  ];

  xdg.configFile."niri/config.kdl".source =
    ./niri/config.kdl;
}
