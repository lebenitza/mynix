{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./vscode
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "manei";
    homeDirectory = "/home/manei";
  };

  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "lebenitza";
    userEmail = "6485811+lebenitza@users.noreply.github.com";

   extraConfig = {
    init = { 
      defaultBranch = "main";
    };
   };
  };

  systemd.user.startServices = "sd-switch";

  home.stateVersion = "24.05";
}
