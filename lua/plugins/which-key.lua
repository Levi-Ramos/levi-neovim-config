return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {},

  keys = require("which-key").add({
    -- discord group
    { "<leader>D", group = "Discord", icon = "" },
    { "<leader>Dc", desc = "Connect to discord", mode = "n" },
    { "<leader>Dr", desc = "Reconnect to discord", mode = "n" },
    { "<leader>Dd", desc = "Disconnect from discord", mode = "n" },
    { "<leader>Dt", desc = "Toggle presence", mode = "n" },
    { "<leader>Ds", desc = "Show presence", mode = "n" },
    { "<leader>Dh", desc = "Hide presence", mode = "n" },
    { "<leader>Di", desc = "Show idle status", mode = "n" },
    { "<leader>Du", desc = "Unhide idle status", mode = "n" },
  }),

  config = function()
    local whichKey = require("which-key")
    -- Register group if markdown is attach
    vim.api.nvim_create_autocmd("Filetype", {
      pattern = "markdown",
      callback = function()
        whichKey.add({
          { "<leader>m", group = "Markdown", icon = "", buffer = true },
        })
      end,
    })
    -- Register Flutter commands only if Dart LSP is attached
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == "dartls" then
          whichKey.add({
            { "<leader>Fb", group = "Bloc" },
          })
          whichKey.register({
            ["<leader>F"] = { name = "Flutter", icon = "" },
            ["<leader>Frr"] = { desc = "Run flutter", mode = "n" },
            ["<leader>Fd"] = { desc = "Show flutter devices", mode = "n" },
            ["<leader>Fe"] = { desc = "Show flutter emulators", mode = "n" },
            ["<leader>Fre"] = { desc = "Reload flutter", mode = "n" },
            ["<leader>Frs"] = { desc = "Restart flutter", mode = "n" },
            ["<leader>Fq"] = { desc = "Quit flutter", mode = "n" },
            ["<leader>Fo"] = { desc = "Toggle flutter outline", mode = "n" },
            ["<leader>Fl"] = { desc = "Restart flutter lsp", mode = "n" },
          })
        end
      end,
    })
  end,
}
