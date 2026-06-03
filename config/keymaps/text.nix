{
  keymaps = [
    {
      mode = [ "v" ];
      key = "<";
      action = "<gv";
      options = {
        silent = true;
        noremap = true;
        desc = "Indent line";
      };
    }
    {
      mode = [ "v" ];
      key = ">";
      action = ">gv";
      options = {
        silent = true;
        noremap = true;
        desc = "Indent line";
      };
    }
    {
      mode = [
        "i"
        "c"
        "t"
      ];
      key = "<C-b>";
      action = "<ESC>bi";
      options = {
        silent = true;
        noremap = true;
        desc = "Move to beginning of word";
      };
    }
    {
      mode = [
        "i"
        "c"
        "t"
      ];
      key = "<C-e>";
      action = "<ESC>ei";
      options = {
        silent = true;
        noremap = true;
        desc = "Move to end of word";
      };
    }
    {
      mode = [ "x" ];
      key = "p";
      action = "p:let @+=@0<CR>:let @\"=@0<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Dont copy replaced text";
      };
    }
    {
      mode = [ "n" ];
      key = "<Esc>";
      action = "<cmd> noh <CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Clear highlights";
      };
    }
  ];
}
