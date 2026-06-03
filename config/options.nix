{
  pkgs,
  lib,
  ...
}: {
  opts = {
    number = true;
    relativenumber = true;
    splitbelow = true;
    splitright = true;
    scrolloff = 4;

    autoindent = true;
    clipboard = "unnamedplus";
    expandtab = true;
    smartindent = true;
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = 2;

    ignorecase = true;
    incsearch = true;
    smartcase = true;

    swapfile = true;
    updatetime = 200;
    undofile = true;

    mouse = "a";
    fillchars = {
      eob = " ";
    };

    termguicolors = lib.mkForce pkgs.stdenv.isLinux;
  };

  colorschemes.tokyonight.enable = true;
}
