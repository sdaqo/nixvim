{
  plugins.blink-cmp = {
    enable = true;
    settings = {
      keymap = { 
        preset = "default";
        "<C-n>" = [ "show" "hide" ];

        "<Tab>" = ["select_next" "snippet_forward" "fallback"];
        "<S-Tab>" = ["select_prev" "snippet_backward" "fallback"];

        "<C-b>" = ["scroll_documentation_up" "fallback"];
        "<C-f>" = ["scroll_documentation_down" "fallback"];

        "<C-k>" = ["show_signature" "hide_signature" "fallback"];
      };
      snippets.preset = "luasnip";
      completion = {
        menu = {
          auto_show = false; 
        };
        documentation = {
          auto_show = true;
        };
      };
    };
  };
}
