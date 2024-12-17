return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.preset = "classic"
      opts.spec = {
        { "<leader>b", group = "+Buffer" },
        { "<leader>c", group = "+Code" },
        { "<leader>o", group = "+Open" },
        { "<leader>p", group = "+PHP" },
        { "<leader>q", group = "+Quit" },
        { "<leader>s", group = "+Search" },
        { "<leader>u", group = "+UI" },
        { "<leader>x", group = "+Quickfix" },
        { "<leader>t", group = "+Test" },
        { "<leader>g", group = "+Git" },
        { "<leader>f", group = "+Find" },
        { "<leader>fl", group = "+Legacy" },
        { "<leader>fa", group = "+App" },
        { "<leader>fv", group = "+Vendor" },
        { "<leader>oo", group = "Obsidian" },
      }
    end,
  },
}
