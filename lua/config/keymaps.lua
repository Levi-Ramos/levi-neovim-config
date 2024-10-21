-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- dependency variables
local cord = require("cord")
local flutter = require("flutter-tools")

-- Discord keymaps
vim.keymap.set("n", "<leader>Dc", function()
  print("Connecting to discord")
  cord.connect()
end)

vim.keymap.set("n", "<leader>Dr", function()
  print("Reconnecting to discord")
  cord.reconnect()
end)

vim.keymap.set("n", "<leader>Dd", function()
  print("Disconnect from discord")
  cord.disconnect()
end)

vim.keymap.set("n", "<leader>Dt", function()
  print("Toggle presence of discord")
  cord.toggle_presence()
end)

vim.keymap.set("n", "<leader>Ds", function()
  print("Show presence in discord")
  cord.show_presence()
end)

vim.keymap.set("n", "<leader>Dh", function()
  print("hide presence in discord")
  cord.hide_presence()
end)

vim.keymap.set("n", "<leader>Di", function()
  print("Show idle status")
  cord.idle()
end)

vim.keymap.set("n", "<leader>Du", function()
  print("Unhide idle status")
  cord.unidle()
end)

-- flutter plugin tools keymaps
vim.keymap.set("n", "<leader>Frr", ":FlutterRun<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Fd", ":FlutterDevices<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Fe", ":FlutterEmulators<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Fre", ":FlutterReload<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Frs", ":FlutterRestart<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Fq", ":FlutterQuit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Fo", ":FlutterOutlineToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>Fl", ":FlutterLspRestart<CR>", { noremap = true, silent = true })
