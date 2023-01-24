-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Disable annoying command line typo.
vim.keymap.set("n", "q:", ":q")

-- -- Maintain the cursor position position when yanking a visual selection.
vim.keymap.set("v", "y", "myy`y")
vim.keymap.set("v", "Y", "myY`y")

-- Disable annoying command line typo.
vim.keymap.set("n", "q:", ":q")

-- Easy insertion of a trailing ; or , from insert mode.
vim.keymap.set("i", ";;", "<Esc>A;")
vim.keymap.set("i", ",,", "<Esc>A,")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-t>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-n>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-s>", function()
  ui.nav_file(4)
end)

vim.keymap.set("n", "<leader>cj", ":SplitjoinJoin<CR>", { desc = "Join lines" })
vim.keymap.set("n", "<leader>cs", ":SplitjoinSplit<CR>", { desc = "Split lines" })

vim.keymap.set(
  "n",
  "<leader>fg",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "Find Grep" }
)
