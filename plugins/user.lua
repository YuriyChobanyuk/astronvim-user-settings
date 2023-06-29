return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "VeryLazy",
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  {
    "Pocco81/auto-save.nvim",
    event = "VeryLazy",
    config = function()
      require("auto-save").setup {
        trigger_events = { "InsertLeave", "TextChanged", "BufLeave" }, -- vim events that trigger auto-save. See :h events
        -- your config goes here
        -- or just leave it empty :)
      }
    end,
  },
  {
    "ckolkey/ts-node-action",
    event = "VeryLazy",
    requires = { "nvim-treesitter" },
    config = function() require("ts-node-action").setup {} end,
  },
}
