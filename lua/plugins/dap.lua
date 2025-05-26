return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    dap.defaults.fallback.exception_breakpoints = {}

    dap.adapters.dart = {
      type = "executable",
      command = "flutter",
      args = { "debug_adapter" },
    }
    dap.configurations.dart = {
      {
        type = "dart",
        request = "launch",
        name = "Launch Flutter Program",
        program = "${file}",
        cwd = "${workspaceFolder}",
        toolArgs = { "-d", "R9DTA001Q2T" },
      },
      {
        type = "dart",
        request = "attach",
        name = "Attach to Running Flutter App",
        cwd = "${workspaceFolder}",
        vmServiceUri = function()
          return vim.fn.input("VM Service URI: ")
        end,
      },
    }
  end,
}
