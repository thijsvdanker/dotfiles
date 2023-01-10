return function(use)
  use({
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({})
    end
  })
  -- Add, change, and delete surrounding text.
  use('tpope/vim-surround')

  -- Add, change, and delete surrounding text.
  use('tpope/vim-fugitive')

  -- Indent autodetection with editorconfig support.
  use('tpope/vim-sleuth')
  --
  -- Add more languages.
  use('sheerun/vim-polyglot')

  -- Navigate seamlessly between Vim windows and Tmux panes.
  use('christoomey/vim-tmux-navigator')

  -- Jump to the last location when opening a file.
  use('farmergreg/vim-lastplace')

  -- Enable * searching with visually selected text.
  use('nelstrom/vim-visual-star-search')

  -- Split arrays and methods onto multiple lines, or join them back up.
  use({
    'AndrewRadev/splitjoin.vim',
    config = function()
      vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
      vim.g.splitjoin_trailing_comma = 1
      vim.g.splitjoin_php_method_chain_full = 1
    end,
  })

  -- Automatically fix indentation when pasting code.
  use({
    'sickill/vim-pasta',
    config = function()
      vim.g.pasta_disabled_filetypes = { 'fugitive' }
    end,
  })

  -- One Dark theme.
-- use({
--     'jessarcher/onedark.nvim',
--     config = function()
--         vim.cmd('colorscheme onedark')
--
--         -- vim.api.nvim_set_hl(0, 'FloatBorder', {
--         --     fg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
--         --     bg = vim.api.nvim_get_hl_by_name('NormalFloat', true).background,
--         -- })
--     end,
-- })

  require("luasnip.loaders.from_vscode").lazy_load({paths = "~/.config/nvim/lua/custom/snippets"})

end
