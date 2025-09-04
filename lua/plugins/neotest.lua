return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "sidlatau/neotest-dart",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-dart")({
          command = "flutter", -- ensures we run `flutter test`
          use_lsp = true, -- better discovery for blocTest, widget tests, etc.
          args = { "--reporter", "json", "--no-pub" }, -- more reliable parsing
        }),
      },
    })
  end,
}
