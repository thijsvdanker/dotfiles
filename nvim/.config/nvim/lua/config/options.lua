-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.redrawtime = 10000

-- preview replacements in a split
opt.inccommand = "split"

-- This is for Obsidian to display the markdown preview
opt.conceallevel = 2
--
-- LSP Server to use for PHP.
-- Set to "intelephense" to use intelephense instead of phpactor.
vim.g.lazyvim_php_lsp = "intelephense"

-- Dont animate things
vim.g.snacks_animate = false

vim.g.lazyvim_picker = "snacks"

-- Enable GitHub Copilot native LSP
vim.lsp.enable("copilot")
