require("which-key").add({
  {
    "<leader>D",
    group = "Discord",
    icon = function() end,
  },

  { "<leader>Dc", desc = "Connect to discord", mode = "n" },
  { "<leader>Dr", desc = "Reconnect to discord", mode = "n" },
  { "<leader>Dt", desc = "Toggle presence", mode = "n" },
  { "<leader>Ds", desc = "Show presence", mode = "n" },
  { "<leader>Dh", desc = "Hide presence", mode = "n" },
  { "<leader>Dt", desc = "Toggle presence", mode = "n" },
  { "<leader>Di", desc = "Show idle status", mode = "n" },
  { "<leader>Du", desc = "Unhide idle status", mode = "n" },
})
