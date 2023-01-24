return {
  {
    "vim-test/vim-test",
    event = "VeryLazy",
    keys = {
      { "<leader>tf", "<cmd>TestFile<cr>", desc = "Test file" },
      { "<leader>tr", "<cmd>TestNearest<cr>", desc = "Test Nearest" },
      { "<leader>tp", "<cmd>TestLast<cr>", desc = "Test Recent" },
      { "<leader>tg", "<cmd>TestVisit<cr>", desc = "Go to recent test file" },
    },
  },
}
