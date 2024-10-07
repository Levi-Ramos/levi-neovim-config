require("telescope").setup({
  defaults = {
    mapping = {},
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
      },
    },
  },
})
