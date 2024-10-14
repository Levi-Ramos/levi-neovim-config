-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Discord keymaps
vim.keymap.set("n", "<leader>Dc", function()
  print("Connecting to discord")
  require("cord").connect()
end)

vim.keymap.set("n", "<leader>Dr", function()
  print("Reconnecting to discord")
  require("cord").reconnect()
end)

vim.keymap.set("n", "<leader>Dd", function()
  print("Disconnect from discord")
  require("cord").disconnect()
end)

vim.keymap.set("n", "<leader>Dt", function()
  print("Toggle presence of discord")
  require("cord").toggle_presence()
end)

vim.keymap.set("n", "<leader>Ds", function()
  print("Show presence in discord")
  require("cord").show_presence()
end)

vim.keymap.set("n", "<leader>Dh", function()
  print("hide presence in discord")
  require("cord").hide_presence()
end)

vim.keymap.set("n", "<leader>Di", function()
  print("Show idle status")
  require("cord").idle()
end)

vim.keymap.set("n", "<leader>Du", function()
  print("Unhide idle status")
  require("cord").unidle()
end)
