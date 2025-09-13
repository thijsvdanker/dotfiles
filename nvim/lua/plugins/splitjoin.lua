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
}
-- return {
--   "Wansmer/treesj",
--   dependencies = { "nvim-treesitter" },
--   keys = {
--     { "gS", "<cmd>TSJToggle<CR>", desc = "Toggle Split/Join" },
--   },
--   config = function()
--     require("treesj").setup({
--       -- Customize your settings here, if needed
--       use_default_keymaps = false, -- We'll define custom keymaps
--       max_join_length = 120,
--     })
--   end,
-- }
