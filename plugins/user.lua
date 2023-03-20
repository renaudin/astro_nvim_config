return {
  {
    "nvim-neorg/neorg",
    lazy = false,
    config = function()
      require("neorg").setup {
        run = ":Neorg sync-parsers", -- This is the important bit!
        load = {
          ["core.defaults"] = {},
          ["core.export"] = {},
          ["core.export.markdown"] = {},
          ["core.norg.completion"] = {},
          ["core.norg.concealer"] = {},
          ["core.norg.dirman"] = {
            config = {
              workspaces = {
                work = "~/notes/work",
                home = "~/notes/home",
              }
            }
          }
        }
      }
    end,
  },

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
}
