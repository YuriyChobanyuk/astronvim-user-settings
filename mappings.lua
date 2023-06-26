-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- TODO find out how to combine visual and normal mode hotkeys
    ["U"] = { "<C-r>", desc = "Redo" },
    ["<leader>y"] = { "\"+y", desc ="Yank to System clipboard" },
    ["<leader>p"] = { "\"+p", desc ="Paste from System clipboard" },
    ["gb"] = { "<C-O>", desc = "Go back" },
    ["gf"] = { "<C-I>", desc = "Go forward" },

    -- Hop plugin setup
    ["<leader>ss"] = { function() require("hop").hint_char2({}) end },
    ["<leader>sf"] = { function() require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true }) end },
    ["<leader>sF"] = { function() require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true }) end },
    ["<leader>st"] = { function() require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = false }) end },
    ["<leader>sT"] = { function() require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = false }) end },
    ["<leader>fW"] = {
      function()
        require("telescope.builtin").live_grep {
          additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore", "-w" }) end,
        }
      end,
      desc = "Find words in all files",
    },

    ["<leader>fv"] = { function() require("telescope.builtin").treesitter() end, desc = "Search variables" },

    ["<leader>gR"] = { function() require("gitsigns").reset_buffer() end, desc = "Reset Git buffer" },
    ["<leader>gr"] = false,

    ["<leader>kk"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    ["<leader>kl"] = {
      function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd.Neotree "focus"
        end
      end,
      desc = "Toggle Explorer Focus",
    },
    ["<leader>h"] = false,
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    ["U"] = { "<C-r>", desc = "Redo" },
    ["<leader>y"] = { "\"+y", desc ="Yank to System clipboard" },
    ["<leader>p"] = { "\"+p", desc ="Paste from System clipboard" },
    ["gb"] = { "<C-O>", desc = "Go back" },
    ["gf"] = { "<C-I>", desc = "Go forward" },
    ["<leader>h"] = false,

    -- Hop plugin setup
    ["<leader>ss"] = { function() require("hop").hint_char2({}) end },
    ["<leader>sf"] = { function() require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true }) end },
    ["<leader>sF"] = { function() require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true }) end },
    ["<leader>st"] = { function() require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = false }) end },
    ["<leader>sT"] = { function() require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = false }) end },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
