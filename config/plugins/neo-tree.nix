{
  plugins.neo-tree = {
    enable = true;
    settings = {
      sources = [
        "filesystem"
        "buffers"
        "git_status"
        "document_symbols"
      ];      
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ee";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Open/Close Neotree";
      };
    }
    {
      mode = "n";
      key = "<leader>ed";
      action = "<cmd>Neotree toggle document_symbols<cr>";
      options = {
        desc = "Open/Close Symbol Tree";
      };
    }
  ];
}
