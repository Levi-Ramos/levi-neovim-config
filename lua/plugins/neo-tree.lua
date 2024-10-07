require("neo-tree").setup({
  git_status_async = true,
  filesystem = {
    filtered_items = {
      hide_gitignored = false,
    },
  },
})
