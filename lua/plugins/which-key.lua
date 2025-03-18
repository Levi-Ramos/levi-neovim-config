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
    -- Function to check if Dart LSP is attached
    local function is_dart_lsp_attached()
      local clients = vim.lsp.get_active_clients()
      for _, client in ipairs(clients) do
        if client.name == "dartls" then
          return true
        end
      end
      return false
    end

    -- Register Flutter commands only if Dart LSP is attached
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == "dartls" then
          require("which-key").add({
            { "<leader>Fb", group = "Bloc" },
          })
          require("which-key").register({
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
