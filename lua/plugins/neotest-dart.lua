return {
  "sidlatau/neotest-dart",
  dependencies = {
    "nvim-neotest/neotest",
  },
  lazy = false,
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-dart")({
          custom_test_method_names = { "blocTest" },
        }),
      },
    })
  end,
}
