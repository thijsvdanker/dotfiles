return {
  {
    "folke/which-key.nvim",
    config = function(plugin)
      -- run original config
      plugin._.super.config()
      require("which-key").register({
        ["<leader>t"] = { name = "+test" },
      })
    end,
  },
}
