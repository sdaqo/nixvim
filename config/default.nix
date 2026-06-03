{pkgs, ...}: {
  imports = [ 
    ./plugins 
    ./keymaps 
    ./options.nix 
  ];

  extraPackages = [ pkgs.ripgrep ];
}
