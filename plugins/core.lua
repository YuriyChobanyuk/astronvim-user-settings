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
            orange = "#d19a66",
            red = "#e06c7f",
            yellow = "#e5c07b",
            blue = "#61afef",
            green = "#98c379",
            cyan = "#56b6c2",
            syntax = {
              orange = "#d19a66",
              red = "#e06c7f",
              yellow = "#e5c07b",
              blue = "#61afef",
              green = "#98c379",
              cyan = "#56b6c2",
            },
            ui = {
              orange = "#d19a66",
              red = "#e06c7f",
              yellow = "#e5c07b",
              blue = "#61afef",
              green = "#98c379",
              cyan = "#56b6c2",
            },
          },
        },
        highlights = {
          global = {},
          astrodark = {
            -- first parameter is the highlight table and the second parameter is the color palette table
            modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
              hl.Comment.fg = c.my_comment
              hl.Comment.italic = false
              hl.Boolean.fg = c.orange
              hl.Constant.fg = c.text
              hl.Float.fg = c.syntax.orange
              hl.Label.fg = c.purple
              hl.Type.fg = c.cyan
              hl.StorageClass.fg = c.purple
              hl.Typedef.fg = c.cyan
              hl.Type.fg = c.cyan
              hl.Special.fg = c.text
              hl.SpecialChar.fg = c.text
              hl.Operator.bold = true
            end,

            ["@annotation"] = { link = "@tag" }, -- red
            ["@class"] = { link = "@Structure" }, -- yellow
            ["@tag.attribute.tsx"] = { link = "@parameter" }, -- orange
            ["@method"] = { link = "@text.math" }, -- blue
            ["@interface"] = { fg = "#56b6c2" },
            ["@field"] = { link = "@text" },
            ["@property"] = { link = "@text" },
            ["@label.json"] = { link = "@tag" },
            ["@decorator"] = { link = "@tag" },
            ["@enum"] = { link = "@Structure" },
            ["@event"] = { link = "@tag" },
            ["@function.builtin"] = { link = "@text.math" },
            ["@constructor.tsx"] = { link = "@Structure" },
            ["@tag.attribute.html"] = { link = "@parameter" },
            ["@none"] = { link = "@text" },
            ["@type.qualifier.typescript"] = { link = "@Keyword" },
            ["@number.css"] = { link = "@parameter" },
            ["@property.css"] = { link = "@text" },
          },
        },
      }
    end,
  },
}
