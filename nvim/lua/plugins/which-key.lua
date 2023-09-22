return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.defaults["<leader>t"] = { name = "+test" }
      opts.defaults["<leader>fl"] = { name = "+legacy" }
      opts.defaults["<leader>fa"] = { name = "+app" }
      opts.defaults["<leader>fv"] = { name = "+vendor" }
    end,
  },
}
