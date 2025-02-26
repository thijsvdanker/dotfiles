return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-telescope/telescope-live-grep-args.nvim' },
    'nvim-telescope/telescope-smart-history.nvim',
    'kkharji/sqlite.lua',
    { 'tsakirist/telescope-lazy.nvim' },
  },
  config = function(_, opts)
    local telescope = require 'telescope'
    telescope.setup(opts)
    telescope.load_extension 'fzf'
    telescope.load_extension 'live_grep_args'
    telescope.load_extension 'lazy'
    vim.keymap.set('n', '<leader>sg', require 'config.telescope.multigrep', { desc = 'multigrep' })
  end,
  opts = {
    defaults = {
      file_ignore_patterns = {
        'node_modules/.*',
        '.git/*',
        '_ide_helper_models.php',
      },
    },
    pickers = {
      find_files = {
        theme = 'ivy',
      },
    },
  },
}
