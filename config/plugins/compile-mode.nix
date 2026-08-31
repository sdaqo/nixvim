{pkgs, ...}: {
  extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
    name = "compile-mode";

    src = pkgs.fetchFromGitHub {
      owner = "ej-shafran";
      repo = "compile-mode.nvim";
      rev = "v5.15.0";
      hash = "sha256-RE2j8xgBD6yvUWCLYU173j4y25+HkYXUG5o+L9hQ/0M=";
    };

    dependencies = [
      pkgs.vimPlugins.plenary-nvim
    ];
  })];

  extraConfigLua = ''
    -- https://github.com/ej-shafran/compile-mode.nvim
    vim.g.compile_mode = {
        default_command = "",
        -- Default to calling `:Compile` for `:Recompile`
        -- when there's no previous command.
        -- :h compile-mode.recompile_no_fail
        recompile_no_fail = true,
        -- Automatically focus the compilation buffer.
        -- :h compile-mode.focus_compilation_buffer
        focus_compilation_buffer = true,
        -- Jump back past the end/beginning of the errors
        -- with `:NextError`/`:PrevError`
        -- :h compile-mode.use_circular_error_navigation
        use_circular_error_navigation = true,
        -- Configure additional error regexes.
        -- :h compile-mode-errors
        error_regexp_table = {
          rustc = {
            regex = [[^\s*-->\s*\([^:]\+\):\(\d\+\):\(\d\+\)]],
            filename = 1,
            row = 2,
            col = 3,
          },
          cargo = {
            regex = [[^\s*-->\s*\([^:]\+\):\(\d\+\):\(\d\+\)]],
            filename = 1,
            row = 2,
            col = 3,
          }
        },
    }
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>cc";
      action = "<cmd>Compile<cr>";
      options = {
        desc = "Compile";
      };
    }
    {
      mode = "n";
      key = "<leader>cn";
      action = "<cmd>NextError<cr>";
      options = {
        desc = "Next compile error";
      };
    }
    {
      mode = "n";
      key = "<leader>cp";
      action = "<cmd>PrevError<cr>";
      options = {
        desc = "Previous compile error";
      };
    }
    {
      mode = "n";
      key = "<leader>cr";
      action = "<cmd>Recompile<cr>";
      options = {
        desc = "Recompile";
      };
    }
  ];
}
