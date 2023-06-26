return {
  -- customize alpha options
  { "goolord/alpha-nvim", enabled = false, },
  { "AstroNvim/astrotheme",
    config = function(plugin, opts)
      require("astrotheme").setup({
        palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`
        palettes = {
          global = {},
          astrodark = {          -- Extend or modify astrodarks palette colors
            my_comment = "#9999bb",
          },
        },
        highlights = {
          global = {},
          astrodark = {
            -- first parameter is the highlight table and the second parameter is the color palette table
            modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
              hl.Comment.fg = c.my_comment
              hl.Boolean.fg = c.orange
            end,

            ["@field"] = { link = "@text" },
            ["@property"] = { link = "@text" },
            ["@annotation"] = { link = "@variable.builtin" },
            ["@class"] = { link = "@constructor" },
            ["@decorator"] = { link = "@variable.builtin"},
            ["@enum"] = { link = "@constructor" },
            ["@event"] = { link = "@variable.builtin" },
            ["@interface"] = { fg = "#56b6c2" },
            ["@method"] = { link = "@text.math" },
            ["@function.builtin"] = { link = "@text.math" },
            ["@tag.attribute.tsx"] = { link = "@parameter" },
          },
        },
      })

    end
  },
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
}
