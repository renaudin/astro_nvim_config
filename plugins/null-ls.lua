return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.formatting.black.with({
        extra_args = { "--line-length=120", "--skip-string-normalization" },
      }),
      null_ls.builtins.diagnostics.flake8.with({
        -- extra_args = { "--ignore=E501" },
        extra_args = function()
          return { '--ignore', table.concat({
            'E501', -- line too long
          }, ',') }
        end
      }),
    }
    return config -- return final config table
  end,
}
