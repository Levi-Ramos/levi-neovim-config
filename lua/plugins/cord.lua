return {
  {
    "vyfor/cord.nvim",
    build = "./build || .\\build",
    event = "VeryLazy",
    opts = {
      buttons = {
        {
          label = "Github Page",
          url = "https://github.com/Levi-Ramos",
        },
        {
          label = "Neovim Config",
          url = "https://github.com/Levi-Ramos/levi-neovim-config",
        },
      },

      editor = {
        tooltip = "Get my nvim config in my github page :D",
      },

      display = {
        show_cursor_position = true,
        swap_fields = true,
        workspace_blacklist = {
          ".env",
        },
      },
    }, -- calls require('cord').setup()
  },
}
