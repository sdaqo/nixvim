{
  imports = [
    ./bufferline.nix
    ./comment.nix
    ./whichkey.nix
    ./treesitter.nix
    ./neo-tree.nix
    ./multicursors.nix
    ./telescope.nix
    ./markdown-preview.nix
    ./neogit.nix
    ./gitsigns.nix
    ./lightline.nix
    ./toggleterm.nix
    ./oil.nix
    ./lsp
  ];

  plugins = {
    colorizer.enable = true;
    nvim-autopairs.enable = true;
    todo-comments.enable = true;
    auto-save.enable = true;
    web-devicons.enable = true;
    better-escape.enable = true;
  };
}
