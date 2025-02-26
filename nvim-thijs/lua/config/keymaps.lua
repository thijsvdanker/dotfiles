vim.keymap.set('n', '<leader>l', '<cmd>Lazy<cr>', { desc = '[L]azy' })

vim.keymap.set('n', '<leader>qq', ':q!<cr>', { desc = '[Q]uit' })

vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Oil' })

-- Telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find [F]iles' })

-- Telescope: search things
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
-- Shortcut for searching your Neovim configuration files
vim.keymap.set('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })

-- Mason
vim.keymap.set('n', '<leader>cm', '<cmd>Mason<cr>', { desc = '[M]ason' })

-- Mini
vim.keymap.set('n', '<leader>fm', ':lua MiniFiles.open()<cr>', { desc = '[M]ini files' })
