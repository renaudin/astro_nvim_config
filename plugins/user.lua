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
  {
    "tpope/vim-fugitive",
    lazy = false
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function()
      require('neogen').setup {
        enabled = true,
        languages = {
          python = {
            template = {
              annotation_convention =
              "reST"
            }
          }
        },
      }
    end
  }
}
