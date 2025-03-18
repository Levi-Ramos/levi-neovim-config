return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    -- add more debug adapters here
    -- dap.configurations.dart = {
    --   {
    --     type = "dart",
    --     request = "launch",
    --     name = "Launch Flutter app",
    --     flutterSdkPath = "C:\flutter\bin",
    --     dartSdkPath = "C:\flutter\bin",
    --     program = "${workspaceFolder}/lib/main.dart",
    --     cwd = "${workspaceFolder}",
    --   },
    -- }
  end,
}
