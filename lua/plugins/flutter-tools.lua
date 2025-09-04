return {
  "akinsho/flutter-tools.nvim",
  ft = "dart",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      ui = {
        border = "rounded",
        notification_style = "native",
      },
      dev_tools = {
        autostart = true,
        auto_open_browser = true,
      },
      lsp = {
        color = {
          enabled = true,
          background = false,
          foreground = true,
          virtual_text = false,
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
        },
      },
    })
  end,
}
