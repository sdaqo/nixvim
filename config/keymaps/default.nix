{
  imports = [
    ./nav.nix
    ./panes.nix
    ./text.nix
  ];

  globals.mapleader = " ";
  keymaps = [
    {
      mode = ["n"];
      key = ";";
      action = ":";
      options = {
        silent = true;
        noremap = true;
        nowait = true;
        desc = "Hello World!";
      };
    }
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
