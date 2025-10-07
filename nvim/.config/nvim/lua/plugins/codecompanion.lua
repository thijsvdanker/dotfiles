return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      display = {
        action_palette = {
          provider = "snacks",
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
