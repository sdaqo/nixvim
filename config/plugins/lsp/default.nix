{pkgs, lib, ...}: {
  imports = [
    ./blink-cmp.nix
    ./conform.nix
    ./luasnip.nix
  ];

  extraPackages = [ pkgs.rustc pkgs.cargo ];

  plugins.lspconfig.enable = true;
  lsp = {
    inlayHints.enable = true;
    servers = {
      html.enable = true;
      cssls.enable = true;
      lua_ls.enable = true;
      jsonls.enable = true;
      ts_ls.enable = true;
      clangd.enable = true;
      pyright.enable = true;
      yamlls.enable = true;
      nixd.enable = true;
      gopls.enable = true;
      eslint.enable = true;
      rust_analyzer.enable = true;
    };
    keymaps = [
      {
        key = "gd";
        lspBufAction = "definition";
        options.desc = "Go to Definition";
      }
      {
        key = "gD";
        lspBufAction = "references";
        options.desc = "Go to Declaration";
      }
      {
        key = "gt";
        lspBufAction = "type_definition";
        options.desc = "Go to typdef";
      }
      {
        key = "gi";
        lspBufAction = "implementation";
        options.desc = "Go to implementation";
      }
      {
        key = "K";
        lspBufAction = "hover";
        options.desc = "LSP Hover Action";
      }
      {
        action = lib.nixvim.mkRaw "function() vim.diagnostic.jump({ count=1, float=true }) end";
        key = "<leader>j";
        options.desc = "Next LSP Diagnostic";
      }
      {
        action = lib.nixvim.mkRaw "function() vim.diagnostic.jump({ count=-1, float=true }) end";
        key = "<leader>k";
        options.desc = "Previous LSP Diagnostic";
      }
      {
        action = "<CMD>LspStop<Enter>";
        key = "<leader>lx";
        options.desc = "Stop LSP";
      }
      {
        action = "<CMD>LspStart<Enter>";
        key = "<leader>ls";
        options.desc = "Start LSP";
      }
      {
        action = "<CMD>LspRestart<Enter>";
        key = "<leader>lr";
        options.desc = "Restart LSP";
      }
    ];
  };
}
