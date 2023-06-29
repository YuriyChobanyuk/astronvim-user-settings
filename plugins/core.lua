return {
  -- customize alpha options
  { "goolord/alpha-nvim", enabled = false },
  {
    "AstroNvim/astrotheme",
    config = function(plugin, opts)
      require("astrotheme").setup {
        palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`
        palettes = {
          global = {},
          astrodark = { -- Extend or modify astrodarks palette colors
            my_comment = "#9999bb",
          },
        },
        highlights = {
          global = {},
          astrodark = {
            -- first parameter is the highlight table and the second parameter is the color palette table
            modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
              hl.Comment.fg = c.my_comment
              hl.Comment.italic = true
              hl.Boolean.fg = c.orange
              hl.Constant.fg = c.text
              hl.Float.fg = c.orange
              hl.Label.fg = c.blue
              hl.Type.fg = c.purple
              hl.StorageClass.fg = c.purple
              hl.Typedef.fg = c.cyan
              hl.Type.fg = c.cyan
              hl.Special.fg = c.cyan
              hl.SpecialChar.fg = c.cyan
              hl.Operator.bold = true
            end,

            ["@field"] = { link = "@text" },
            ["@property"] = { link = "@text" },
            ["@label.json"] = { link = "@variable.builtin" },
            ["@annotation"] = { link = "@variable.builtin" }, -- red
            ["@class"] = { link = "@constructor" }, -- yellow
            ["@decorator"] = { link = "@variable.builtin" },
            ["@enum"] = { link = "@constructor" },
            ["@event"] = { link = "@variable.builtin" },
            ["@interface"] = { fg = "#56b6c2" },
            ["@method"] = { link = "@text.math" }, -- blue
            ["@function.builtin"] = { link = "@text.math" },
            ["@tag.attribute.tsx"] = { link = "@parameter" }, -- orange
            ["@tag.attribute.html"] = { link = "@parameter" },
            ["@none"] = { link = "@text" },

            ["@number.css"] = { link = "@parameter" },
            ["@property.css"] = { link = "@text" },
          },
        },
      }
    end,
  },
}
