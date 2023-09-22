-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
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
vim.keymap.set("n", "<C-j>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-k>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-l>", function()
  ui.nav_file(4)
end)

vim.keymap.set("n", "<leader>cj", ":SplitjoinJoin<CR>", { desc = "Join lines" })
vim.keymap.set("n", "<leader>cs", ":SplitjoinSplit<CR>", { desc = "Split lines" })

-- vim.keymap.set("n", "<leader>cj", ":TSJJoin<CR>", { desc = "Join lines" })
-- vim.keymap.set("n", "<leader>cs", ":TSJSplit<CR>", { desc = "Split lines" })

vim.keymap.set("n", "<leader>fs", ":lua require('telescope.builtin').resume()<CR>", { desc = "Resume" })

vim.keymap.set(
  "n",
  "<leader>fg",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "Find Grep" }
)

vim.keymap.set(
  "n",
  "<leader>fvg",
  ":lua require'telescope.builtin'.live_grep{ cwd='vendor', vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u' } }<CR>",
  { desc = "Find Grep (vendor)" }
)

vim.keymap.set(
  "n",
  "<leader>fvf",
  ":lua require'telescope.builtin'.find_files{ cwd='vendor', vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u' } }<CR>",
  { desc = "Find Files (vendor)" }
)

vim.keymap.set(
  "n",
  "<leader>fam",
  ":lua require('telescope.builtin').find_files({cwd='app/Models', prompt_title='Find Models'})<CR>",
  { desc = "Find App Models" }
)

vim.keymap.set(
  "n",
  "<leader>fal",
  ":lua require('telescope.builtin').find_files({cwd='app/Http/Livewire', prompt_title='Find Livewire'})<CR>",
  { desc = "Find App Livewire" }
)

vim.keymap.set(
  "n",
  "<leader>fab",
  ":lua require('telescope.builtin').find_files({cwd='resources', prompt_title='Find Blade', find_command={'rg', '--files', '--hidden', '-g', '[a-zA-z]*.blade.php'} })<CR>",
  { desc = "Find App Blade" }
)

vim.keymap.set(
  "n",
  "<leader>flc",
  ":lua require('telescope.builtin').find_files({cwd='legacy/application/modules', prompt_title='Find Controller', find_command={'rg', '--files', '--hidden', '-g', '[a-zA-z]*Controller.php'} })<CR>",
  { desc = "Find Legacy Controller" }
)

vim.keymap.set(
  "n",
  "<leader>flt",
  ":lua require('telescope.builtin').find_files({cwd='legacy/application/modules', prompt_title='Find template', find_command={'rg', '--files', '--hidden', '-g', '[a-zA-z]*.phtml'} })<CR>",
  { desc = "Find Legacy Template" }
)

vim.keymap.set(
  "n",
  "<leader>fp",
  ":lua require('telescope.builtin').find_files({prompt_title='Find php', find_command={'rg', '--files', '--hidden', '-g', '[a-zA-z]*.php'} })<CR>",
  { desc = "Find PHP" }
)

vim.keymap.set("n", "<leader>pm", ":PhpactorContextMenu<CR>", { desc = "PHP Refactoring Menu" })
vim.keymap.set("n", "<leader>pn", ":PhpactorClassNew<CR>", { desc = "PHP New Class" })

-- Open frequent files
vim.keymap.set("n", "<leader>oc", ":e composer.json<CR>", { desc = "Open composer.json" })
vim.keymap.set("n", "<leader>owe", ":e .env.regiweb.localhost<CR>", { desc = "Open .env" })
vim.keymap.set("n", "<leader>oee", ":e .env<CR>", { desc = "Open .env" })
vim.keymap.set("n", "<leader>or", ":e routes/web.php<CR>", { desc = "Open routes file" })
vim.keymap.set(
  "n",
  "<leader>ol",
  ":e legacy/application/configs/application.regiweb.localhost.ini<CR>",
  { desc = "Open legacy config" }
)

-- -- DAP
-- vim.keymap.set("n", "<leader>du", ":lua require'dap'.step_out()<CR>", { desc = "Step Out" })
vim.keymap.set("n", "<leader>ds", ":lua require'dap'.run_to_cursor()<CR>", { desc = "Run to Cursor" })

-- Close all buffers except the current one
vim.keymap.set("n", "<leader>bc", ":%bd|e#<CR>", { desc = "Close all buffers except the current one" })
