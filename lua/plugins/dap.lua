return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    -- add more debug adapters here
    dap.configurations.dart = {
      {
        type = "dart",
        request = "launch",
        name = "zeep launch flutter (linux)",
        flutterSdkPath = "/home/apollo/flutter/bin/flutter",
        dartSdkPath = "/home/apollo/flutter/bin/dart",
        program = "${workspaceFolder}/lib/main.dart",
        cwd = "${workspaceFolder}",
      },
    }
  end,
}
