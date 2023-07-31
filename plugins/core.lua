return {
  -- customize alpha options
  { "goolord/alpha-nvim", enabled = false },
  {
    "AstroNvim/astrotheme",
    version = "1.7.0",
    config = function(plugin, opts)
      local palette = {
        orange = "#d19a66",
        red = "#e06c7f",
        yellow = "#e5c07b",
        blue = "#61afef",
        green = "#98c379",
        cyan = "#56b6c2",
      }

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
              hl.Special.fg = c.text
              hl.SpecialChar.fg = c.text
              hl.Operator.bold = true
            end,

            ["@annotation"] = { fg = palette.red }, -- red
            ["@class"] = { fg = palette.yellow }, -- yellow
            ["@tag.attribute.tsx"] = { fg = palette.orange }, -- orange
            ["@method"] = { fg = palette.blue }, -- blue
            ["@interface"] = { fg = palette.cyan },
            ["@field"] = { link = "@text" },
            ["@property"] = { link = "@text" },
            ["@label.json"] = { fg = palette.red },
            ["@decorator"] = { fg = palette.red },
            ["@enum"] = { fg = palette.yellow },
            ["@event"] = { fg = palette.red },
            ["@function.builtin"] = { fg = palette.blue },
            ["@constructor.tsx"] = { fg = palette.yellow },
            ["@tag.attribute.html"] = { fg = palette.orange },
            ["@none"] = { link = "@text" },
            ["@type.qualifier.typescript"] = { fg = palette.purple },
            ["@number.css"] = { fg = palette.orange },
            ["@property.css"] = { link = "@text" },
          },
        },
      }
    end,
  },
}
