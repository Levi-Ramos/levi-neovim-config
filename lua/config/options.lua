-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options hereby

local opt = vim.opt
opt.scrolloff = 8
vim.o.synmaxcol = 128
vim.cmd("syntax sync minlines=1000")
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.snacks_animate = false
