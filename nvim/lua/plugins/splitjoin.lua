return {
  {
    "AndrewRadev/splitjoin.vim",
    event = "VeryLazy",
    config = function()
      vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
      vim.g.splitjoin_trailing_comma = 1
      vim.g.splitjoin_php_method_chain_full = 1
    end,
  },
  -- {
  --   "Wansmer/treesj",
  --   event = "VeryLazy",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   config = function()
  --     require("treesj").setup({
  --       use_default_keymaps = false,
  --     })
  --   end,
  -- },
}
