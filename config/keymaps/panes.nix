{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        silent = true;
        noremap = true;
        desc = "Window left";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        silent = true;
        noremap = true;
        desc = "Window right";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        silent = true;
        noremap = true;
        desc = "Window down";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        silent = true;
        noremap = true;
        desc = "Window up";
      };
    }
  ];
}
