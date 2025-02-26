-- Disable annoying command line typo.
vim.keymap.set('n', 'q:', ':q')

-- -- Maintain the cursor position position when yanking a visual selection.
vim.keymap.set('v', 'y', 'myy`y')
vim.keymap.set('v', 'Y', 'myY`y')
-- Easy insertion of a trailing ; or , from insert mode.

vim.keymap.set('i', ';;', '<Esc>A;')
vim.keymap.set('i', ',,', '<Esc>A,')

vim.keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end, { desc = 'Harpoon' })
-- vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon" })
vim.keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
