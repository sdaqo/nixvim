{pkgs, lib, ...}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        java = [ "google-java-format" ];
        python = [ "black" ];
        lua = [ "stylua" ];
        nix = [ "alejandra" ];
        rust = [ "rustfmt" ];
        json = [ "jq" ];
        bash = [ "shellcheck" "shellharden" "shfmt" ];
        yaml = [ "yamlfmt" ];
        "_" = [ "trim_whitespace" ];
      } // (builtins.mapAttrs (n: v: ["prettierd" "prettier"]) {
          html = 0; css = 0; javascript = 0; javascriptreact = 0; typescript = 0; typescriptreact = 0; markdown = 0;
      });

      formatters = {
        google-java-format.command = "${lib.getExe pkgs.google-java-format}";
        black.command = "${lib.getExe pkgs.black}";
        stylua.command = "${lib.getExe pkgs.stylua}";
        prettierd.command = "${lib.getExe pkgs.prettierd}";
        alejandra.command = "${lib.getExe pkgs.alejandra}";
        jq.command = "${lib.getExe pkgs.jq}";
        rustfmt.command = "${lib.getExe pkgs.rustfmt}";
        shellcheck.command = "${lib.getExe pkgs.shellcheck}";
        shellharden.command = "${lib.getExe pkgs.shellharden}";
        shfmt.command = "${lib.getExe pkgs.shfmt}";
        yamlfmt.command = "${lib.getExe pkgs.yamlfmt}";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ft";
      action = ":FormatToggle<CR>";
      options = {
        desc = "Toggle Format";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fm";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Buffer";
      };
    }

    {
      mode = "v";
      key = "<leader>fl";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Lines";
      };
    }
  ];
}
