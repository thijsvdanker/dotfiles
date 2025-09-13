return {
  "voldikss/vim-floaterm",
  event = "VeryLazy",
  config = function()
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_height = 0.8
    vim.keymap.set("n", "§", ":FloatermToggle<CR>")
    vim.keymap.set("t", "§", "<C-\\><C-n>:FloatermToggle<CR>")

    -- Make the border of the floaterm the same color as the cursor line
    vim.api.nvim_set_hl(0, "FloatermBorder", {
      fg = vim.api.nvim_get_hl_by_name("CursorLine", true).background,
      bg = vim.api.nvim_get_hl_by_name("CursorLine", true).background,
    })

    vim.cmd([[
      highlight link Floaterm CursorLine
    ]])
  end,
}
