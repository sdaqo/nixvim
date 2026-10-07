{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      skip_confirm_for_simple_edits = true;
      watch_for_changes = true;
      view_options.show_hidden = true;
      keymaps = {
        "<C-l>" = false;
        "<C-h>" = false;
        "<C-s>" = false;
        "<C-r>" = "actions.refresh";
      };
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
