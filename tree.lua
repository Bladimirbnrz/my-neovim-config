require("nvim-tree").setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 25,
  }
})
