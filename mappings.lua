-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local function assign(tbl, props)
  for k, v in pairs(props) do
    tbl[k] = v
  end
end

local hopMappings = {
  ["<leader>ss"] = { function() require("hop").hint_char2 {} end },
  ["<leader>sf"] = {
    function()
      require("hop").hint_char1 { direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true }
    end,
  },
  ["<leader>sF"] = {
    function()
      require("hop").hint_char1 {
        direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
        current_line_only = true,
      }
    end,
  },
  ["<leader>st"] = {
    function()
      require("hop").hint_char1 {
        direction = require("hop.hint").HintDirection.AFTER_CURSOR,
        current_line_only = false,
      }
    end,
  },
  ["<leader>sT"] = {
    function()
      require("hop").hint_char1 {
        direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
        current_line_only = false,
      }
    end,
  },
}

local commonMappings = {
  ["U"] = { "<C-r>", desc = "Redo" },
  ["<leader>y"] = { '"+y', desc = "Yank to System clipboard" },
  ["<leader>p"] = { '"+p', desc = "Paste from System clipboard" },
  ["gb"] = { "<C-O>", desc = "Go back" },
  ["gf"] = { "<C-I>", desc = "Go forward" },
}

local telescopeMappings = {

  ["<leader>fW"] = {
    function()
      require("telescope.builtin").live_grep {
        additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore", "-w" }) end,
      }
    end,
    desc = "Find words in all files",
  },
  ["<leader>fv"] = { function() require("telescope.builtin").treesitter() end, desc = "Search variables" },
}

local neotreeMappings = {
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
}

local gitsignsMappings = {
  ["<leader>gR"] = { function() require("gitsigns").reset_buffer() end, desc = "Reset Git buffer" },
  ["<leader>gr"] = { function() require("gitsigns").reset_hunk() end, desc = "Reset Git hunk" },
  ["<leader>gh"] = { function() require("gitsigns").preview_hunk() end, desc = "Preview Git hunk" },
}

local tabMappings = {
  ["<C-`>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  ["<leader>tc"] = { function() vim.cmd.tabclose() end, desc = "Close tab" },
  ["<leader>tn"] = { function() vim.cmd.tabnew() end, desc = "New tab" },
  ["<leader>tt"] = {
    function()
      vim.cmd.tabnew()
      vim.cmd.terminal()
    end,
    desc = "New terminal",
  },
}

local mappings = {
  -- first key is the mode
  n = {
    ["<leader>h"] = false,
  },
  v = {
    ["<leader>h"] = false,
  },
  t = {},
}

assign(mappings.n, commonMappings)
assign(mappings.n, hopMappings)
assign(mappings.n, telescopeMappings)
assign(mappings.n, gitsignsMappings)
assign(mappings.n, neotreeMappings)
assign(mappings.n, tabMappings)

assign(mappings.v, commonMappings)
assign(mappings.v, hopMappings)

assign(mappings.t, tabMappings)

return mappings
