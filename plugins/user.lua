return {
  {
    "tpope/vim-fugitive",
    lazy = false
  },
  {
    "vimwiki/vimwiki",
    lazy = false,
    init = function()
      vim.g.vimwiki_global_ext = 0
      vim.g.vimwiki_list = {
        {
          path = '/home/victor/notes',
          syntax = 'markdown',
          ext = '.md',
        },
      }
    end,
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
