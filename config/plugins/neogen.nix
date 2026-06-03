{
  plugins.neogen = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>nf";
      action = "<cmd>lua require('neogen').generate()<cr>";
      options = {
        desc = "Generate docstring";
      };
    }
  ];
}
