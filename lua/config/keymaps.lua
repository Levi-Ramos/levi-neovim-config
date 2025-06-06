-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- dependency variables
local cord = require("cord")

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

-- flutter keymaps
local function setup_flutter_keymaps()
  -- bloc
  vim.keymap.set("n", "<leader>Fbb", ":FlutterCreateBloc<CR>", { noremap = true, desc = "Create Bloc" })
  vim.keymap.set("n", "<leader>Fbc", ":FlutterCreateCubit<CR>", { noremap = true, desc = "Create Cubit" })

  -- flutter tools
  vim.keymap.set("n", "<leader>Frr", ":FlutterRun<CR>", { noremap = true, silent = true, desc = "Run Flutter" })
  vim.keymap.set(
    "n",
    "<leader>Fd",
    ":FlutterDevices<CR>",
    { noremap = true, silent = true, desc = "Show Flutter Devices" }
  )
  vim.keymap.set(
    "n",
    "<leader>Fe",
    ":FlutterEmulators<CR>",
    { noremap = true, silent = true, desc = "Show Flutter Emulators" }
  )
  vim.keymap.set("n", "<leader>Fre", ":FlutterReload<CR>", { noremap = true, silent = true, desc = "Hot Reload" })
  vim.keymap.set("n", "<leader>Frs", ":FlutterRestart<CR>", { noremap = true, silent = true, desc = "Restart Flutter" })
  vim.keymap.set("n", "<leader>Fq", ":FlutterQuit<CR>", { noremap = true, silent = true, desc = "Quit Flutter" })
  vim.keymap.set(
    "n",
    "<leader>Fo",
    ":FlutterOutlineToggle<CR>",
    { noremap = true, silent = true, desc = "Toggle Flutter Outline" }
  )
  vim.keymap.set(
    "n",
    "<leader>Fl",
    ":FlutterLspRestart<CR>",
    { noremap = true, silent = true, desc = "Restart Flutter LSP" }
  )
  vim.keymap.set(
    "n",
    "<leader>Fu",
    ":FlutterCopyProfilerUrl<CR>",
    { noremap = true, silent = true, desc = "Copy Profiler Url" }
  )
end

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "dartls" then
      setup_flutter_keymaps()
    end
  end,
})

local function setup_markdown_keymaps()
  vim.keymap.set(
    "n",
    "<leader>md",
    ":MarkdownPreview<CR>",
    { noremap = true, silent = true, desc = "Preview Markdown" }
  )
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    setup_markdown_keymaps()
  end,
})

-- greatest remap ever
vim.keymap.set("x", "p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "d", "\"_d")

-- dap ui
vim.keymap.set({ "n", "v" }, "<leader>dpt", ':lua require("dapui").toggle()<CR>',
  { noremap = true, desc = 'Toggle Dap UI' })
vim.keymap.set({ "n", "v" }, "<leader>dpd", ':lua requiredapui.disconnect()<CR>',
  { noremap = true, desc = 'Toggle Dap UI' })
