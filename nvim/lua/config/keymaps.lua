-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local harpoon = require("harpoon")
harpoon.setup()

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

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Harpoon" })
-- vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon" })
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
-- vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-j>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-k>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-l>", function()
  harpoon:list():select(4)
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
  ":lua require('telescope.builtin').find_files({cwd='app/Livewire', prompt_title='Find Livewire'})<CR>",
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

-- vim.keymap.set("n", "<leader>od", ":ObsidianToday<CR>", { desc = "Obsidian Today" })
--
vim.keymap.set("n", "<leader>tt", ":lua require('toggle-checkbox').toggle()<CR>", { desc = "toggle checkbox" })

-- Resize splits
vim.keymap.set("n", "<M-,>", "<c-w>5<")
vim.keymap.set("n", "<M-.>", "<c-w>5>")
vim.keymap.set("n", "<M-t>", "<C-W>+")
vim.keymap.set("n", "<M-s>", "<C-W>-")

-- DB: wip
-- Function to get DB_DATABASE value from environment variables and execute a query
-- local function query_db()
--   local db_name = vim.fn.getenv("DB_DATABASE")
--   if db_name and db_name ~= "" then
--     -- Construct the query command
--     local query_command = string.format(":DB %s", db_name)
--     -- Execute the query using vim-dadbod
--     print(query_command)
--   else
--     print("DB_DATABASE is not set in the .env file")
--   end
-- end
--
-- -- Create a unique command to trigger the function
-- vim.api.nvim_create_user_command("QueryDB", query_db, {})
--
-- -- Create a keybinding to trigger the command
-- vim.api.nvim_set_keymap("n", "<leader>dq", ":QueryDB<CR>", { noremap = true, silent = true })
