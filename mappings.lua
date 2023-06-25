-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["U"] = { "<C-r>", desc = "Redo" },
    ["<leader>y"] = { "\"+y", desc ="Yank to System clipboard" },
    ["<leader>p"] = { "\"+p", desc ="Paste from System clipboard" },
    ["gb"] = { "<C-O>", desc = "Go back" },
    ["gf"] = { "<C-I>", desc = "Go forward" },

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
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
