return {
  dir = "~/.config/nvim/lua/plugins/update_env.nvim",
  dependencies = { "tpope/vim-dotenv" },
  config = function()
    require("update_env")
  end,
}
