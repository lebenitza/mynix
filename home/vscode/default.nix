{ pkgs, ... }:

{
 programs.vscode = {
  enable = true;
  enableUpdateCheck = false;

  extensions = with pkgs.vscode-extensions; [
    bbenoist.nix
  ];

  userSettings = {
   "editor.tabSize" = 2;
  };
 };
}
