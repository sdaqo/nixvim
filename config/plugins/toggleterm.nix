{
  plugins.toggleterm = {
    enable = true;
    settings = {
      open_mapping = "[[<A-h>]]";
      hide_numbers = true;
      shade_terminals = true;
      start_in_insert = true;
      terminal_mappings = true;
      persist_mode = true;
      insert_mappings = true;
      close_on_exit = true;
      direction = "horizontal"; # 'vertical' | 'horizontal' | 'window' | 'float'
      auto_scroll = true;
      float_opts = {
        border = "single"; # 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        width = 80;
        height = 20;
        winblend = 0;
      };
    };
  };
}
