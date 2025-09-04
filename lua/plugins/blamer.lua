return {
  "APZelos/blamer.nvim",
  lazy = false,
  keys = { { "<leader>bg", "<cmd>BlamerToggle<cr>" } },
  config = function()
    vim.g.blamer_enabled = true
  end,
}
