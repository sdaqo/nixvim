{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      view_options.show_hidden = true;
    };
  };

  keymaps = [
    {
      key = "<leader>o";
      options.desc = "Open Oil file explorer";
      action = "<cmd>Oil<CR>";
    }
  ];
}
