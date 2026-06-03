{
  keymaps = [
    {
      mode = [
        "i"
        "c"
        "t"
      ];
      key = "<C-h>";
      action = "<Left>";
      options = {
        silent = true;
        noremap = true;
        desc = "Move Left";
      };
    }
    {
      mode = [
        "i"
        "c"
        "t"
      ];
      key = "<C-j>";
      action = "<Down>";
      options = {
        silent = true;
        noremap = true;
        desc = "Move Down";
      };
    }
    {
      mode = [
        "i"
        "c"
        "t"
      ];
      key = "<C-k>";
      action = "<Up>";
      options = {
        silent = true;
        noremap = true;
        desc = "Move Up";
      };
    }
    {
      mode = [
        "i"
        "c"
        "t"
      ];
      key = "<C-l>";
      action = "<Right>";
      options = {
        silent = true;
        noremap = true;
        desc = "Move Right";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "j";
      action = "v:count || mode(1)[0:1] == \"no\" ? \"j\" : \"gj\"";
      options = {
        silent = true;
        noremap = true;
        expr = true;
        desc = "Move down";
      };
    }
    {
      mode = [
        "n"
        "x"
      ];
      key = "k";
      action = "v:count || mode(1)[0:1] == \"no\" ? \"k\" : \"gk\"";
      options = {
        silent = true;
        noremap = true;
        expr = true;
        desc = "Move up";
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<Up>";
      action = "v:count || mode(1)[0:1] == \"no\" ? \"j\" : \"gj\"";
      options = {
        silent = true;
        noremap = true;
        expr = true;
        desc = "Move down";
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<Down>";
      action = "v:count || mode(1)[0:1] == \"no\" ? \"k\" : \"gk\"";
      options = {
        silent = true;
        noremap = true;
        expr = true;
        desc = "Move up";
      };
    }
  ];
}
