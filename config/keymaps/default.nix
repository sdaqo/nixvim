{
  imports = [
    ./nav.nix
    ./panes.nix
    ./text.nix
  ];

  globals.mapleader = " ";
  keymaps = [
    {
      mode = ["t"];
      key = "<Esc>";
      action = "<C-\\><C-n>";
      options = {
        silent = true;
        noremap = true;
        desc = "Escape terminal mode";
      };
    }
  ];
}
