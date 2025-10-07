return {
  dir = "~/.config/nvim/lua/plugins/regicare.nvim",
  dependencies = { "tpope/vim-dotenv" },
  config = function()
    -- Optional setup or configuration for your plugin
    require("regicare").setup()
  end,
}
