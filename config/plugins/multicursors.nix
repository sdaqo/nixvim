{
  pkgs,
  lib,
  ...
}: let
  ut = lib.nixvim;
in {
  extraPlugins = [
    pkgs.vimPlugins.multicursor-nvim
  ];
  extraConfigLua = ''
    local mc = require('multicursor-nvim')
    mc.setup()
    mc.addKeymapLayer(function(layerSet)
        -- Select a different cursor as the main one.
        layerSet({"n", "x"}, "<left>", mc.prevCursor)
        layerSet({"n", "x"}, "<right>", mc.nextCursor)

        -- Delete the main cursor.
        layerSet({"n", "x"}, "<leader>x", mc.deleteCursor)

        -- Enable and clear cursors using escape.
        layerSet("n", "<esc>", function()
            if not mc.cursorsEnabled() then
                mc.enableCursors()
            else
                mc.clearCursors()
            end
        end)
    end)
  '';

  keymaps = [
    {
      mode = ["n" "x"];
      key = "<up>";
      action = ut.mkRaw ''function() require("multicursor-nvim").lineAddCursor(-1) end'';
      options.desc = "Add cursor above";
    }
    {
      mode = ["n" "x"];
      key = "<down>";
      action = ut.mkRaw ''function() require("multicursor-nvim").lineAddCursor(1) end'';
      options.desc = "Add cursor below";
    }
    {
      mode = ["n" "x"];
      key = "<leader><up>";
      action = ut.mkRaw ''function() require("multicursor-nvim").lineSkipCursor(-1) end'';
      options.desc = "Skip cursor above";
    }
    {
      mode = ["n" "x"];
      key = "<leader><down>";
      action = ut.mkRaw ''function() require("multicursor-nvim").lineSkipCursor(1) end'';
      options.desc = "Skip cursor below";
    }
    {
      mode = ["n" "x"];
      key = "<leader>n";
      action = ut.mkRaw ''function() require("multicursor-nvim").matchAddCursor(1) end'';
      options.desc = "Add cursor by matching selection";
    }
    {
      mode = ["n" "x"];
      key = "<leader>s";
      action = ut.mkRaw ''function() require("multicursor-nvim").matchSkipCursor(1) end'';
      options.desc = "Skip matching cursor";
    }
    {
      mode = ["n" "x"];
      key = "<leader>N";
      action = ut.mkRaw ''function() require("multicursor-nvim").matchAddCursor(-1) end'';
      options.desc = "Add previous matching cursor";
    }
    {
      mode = ["n" "x"];
      key = "<leader>S";
      action = ut.mkRaw ''function() require("multicursor-nvim").matchSkipCursor(-1) end'';
      options.desc = "Skip previous matching cursor";
    }
    {
      mode = "n";
      key = "<C-LeftMouse>";
      action = ut.mkRaw ''function() require("multicursor-nvim").handleMouse() end'';
      options.desc = "Add/remove cursor with mouse";
    }
    {
      mode = "n";
      key = "<C-LeftDrag>";
      action = ut.mkRaw ''function() require("multicursor-nvim").handleMouseDrag() end'';
      options.desc = "Drag multicursor selection";
    }
    {
      mode = "n";
      key = "<C-LeftRelease>";
      action = ut.mkRaw ''function() require("multicursor-nvim").handleMouseRelease() end'';
      options.desc = "Finish multicursor mouse action";
    }

    {
      mode = ["n" "x"];
      key = "<C-q>";
      action = ut.mkRaw ''function() require("multicursor-nvim").toggleCursor() end'';
      options.desc = "Toggle cursor";
    }

    {
      mode = "x";
      key = "<leader>t";
      action = ut.mkRaw ''function() require("multicursor-nvim").transposeCursors(1) end'';
      options.desc = "Transpose cursor selections forward";
    }
    {
      mode = "x";
      key = "<leader>T";
      action = ut.mkRaw ''function() require("multicursor-nvim").transposeCursors(-1) end'';
      options.desc = "Transpose cursor selections backward";
    }

    {
      mode = "n";
      key = "<leader>gv";
      action = ut.mkRaw ''function() require("multicursor-nvim").restoreCursors() end'';
      options.desc = "Restore cursors";
    }

    {
      mode = ["n" "x"];
      key = "ga";
      action = ut.mkRaw ''function() require("multicursor-nvim").addCursorOperator() end'';
      options.desc = "Add cursors using operator";
    }

    {
      mode = ["n" "x"];
      key = "<leader><C-q>";
      action = ut.mkRaw ''function() require("multicursor-nvim").duplicateCursors() end'';
      options.desc = "Duplicate cursors";
    }

    {
      mode = "n";
      key = "<leader>a";
      action = ut.mkRaw ''function() require("multicursor-nvim").alignCursors() end'';
      options.desc = "Align cursors";
    }

    {
      mode = "x";
      key = "S";
      action = ut.mkRaw ''function() require("multicursor-nvim").splitCursors() end'';
      options.desc = "Split selections by regex";
    }

    {
      mode = "x";
      key = "M";
      action = ut.mkRaw ''function() require("multicursor-nvim").matchCursors() end'';
      options.desc = "Match cursors by regex";
    }

    {
      mode = ["n" "x"];
      key = "<leader>A";
      action = ut.mkRaw ''function() require("multicursor-nvim").matchAllAddCursors() end'';
      options.desc = "Add cursors to all matches";
    }

    {
      mode = ["n" "x"];
      key = "<leader>m";
      action = ut.mkRaw ''function() require("multicursor-nvim").operator() end'';
      options.desc = "Multicursor operator";
    }

    {
      mode = ["n" "x"];
      key = "]d";
      action = ut.mkRaw ''function() require("multicursor-nvim").diagnosticAddCursor(1) end'';
      options.desc = "Add cursor at next diagnostic";
    }
    {
      mode = ["n" "x"];
      key = "[d";
      action = ut.mkRaw ''function() require("multicursor-nvim").diagnosticAddCursor(-1) end'';
      options.desc = "Add cursor at previous diagnostic";
    }
    {
      mode = ["n" "x"];
      key = "]s";
      action = ut.mkRaw ''function() require("multicursor-nvim").diagnosticSkipCursor(1) end'';
      options.desc = "Skip next diagnostic";
    }
    {
      mode = ["n" "x"];
      key = "[S";
      action = ut.mkRaw ''function() require("multicursor-nvim").diagnosticSkipCursor(-1) end'';
      options.desc = "Skip previous diagnostic";
    }

    {
      mode = ["n" "x"];
      key = "md";
      action = ut.mkRaw ''
        function()
        require("multicursor-nvim").diagnosticMatchCursors({
            severity = vim.diagnostic.severity.ERROR,
            })
        end
      '';
      options.desc = "Add cursors to error diagnostics";
    }
  ];
}
