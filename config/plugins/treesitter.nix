{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;

    folding.enable = false;
    highlight.enable = true;
    indent.enable = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };
  plugins.treesitter-context.enable = true;

  # TODO: Do I need this??
  # -> https://nix-community.github.io/nixvim/plugins/treesitter-textobjects/
  # plugins.treesitter-textobjects = {
  #   enable = true;
  #   lookahead = true;
  # };
}
