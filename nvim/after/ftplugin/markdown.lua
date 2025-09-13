vim.keymap.set("n", "tt", "i- [ ] ", { desc = "add checkbox" })
vim.keymap.set("n", "<leader>tt", ":lua require('toggle-checkbox').toggle()<CR>", { desc = "toggle checkbox" })
