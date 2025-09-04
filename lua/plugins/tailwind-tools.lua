-- tailwind-tools.lua
return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  event = "VeryLazy", -- or "BufReadPre" if you want to load it on buffer read
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
    "neovim/nvim-lspconfig", -- optional
  },
  opts = {}, -- your configuration
}
