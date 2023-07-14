return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local code_actions = null_ls.builtins.code_actions

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      formatting.stylua,
      formatting.prettierd.with {
        prefer_local = "node_modules/.bin",
      },
      diagnostics.eslint_d,
      diagnostics.jsonlint,
      code_actions.eslint_d,
      code_actions.ts_node_action,
      -- TODO find out solution with problematic output (error over info)
      -- diagnostics.cspell.with {
      --   method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
      --   diagnostic_config = {
      --     -- see :help vim.diagnostic.config()
      --     underline = true,
      --     virtual_text = false,
      --     signs = false,
      --     update_in_insert = false,
      --     severity_sort = true,
      --   },
      -- },
      -- code_actions.cspell,
    }
    config.debounce = 500
    config.fallback_severity = vim.diagnostic.severity.INFO
    config.log_level = "error"
    config.update_in_insert = false

    return config -- return final config table
  end,
}
