return {
  {
    "vyfor/cord.nvim",
    build = "./build || .\\build",
    event = "VeryLazy",
    opts = {}, -- calls require('cord').setup()
    buttons = {
      {
        label = "Github Page",
        url = "https://github.com/Levi-Ramos",
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
  },
}
