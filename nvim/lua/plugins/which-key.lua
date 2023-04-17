return {
  {
    "folke/which-key.nvim",
    config = function(plugin)
      -- run original config
      plugin._.super.config()
      require("which-key").register({
        ["<leader>t"] = { name = "+test" },
        ["<leader>fl"] = { name = "+legacy" },
        ["<leader>fa"] = { name = "+app" },
        ["<leader>d"] = { name = "+debug" },
        ["<leader>fv"] = { name = "+vendor" },
      })
    end,
  },
}
