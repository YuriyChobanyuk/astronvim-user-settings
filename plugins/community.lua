return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.pack.typescript" }, -- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/pack/typescript/README.md
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
