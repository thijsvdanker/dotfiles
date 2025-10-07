return {
  { "tpope/vim-fugitive", event = "VeryLazy" },
  {
    "shumphrey/fugitive-gitlab.vim",
    dependencies = {
      { "tpope/vim-fugitive" },
    },
    event = "VeryLazy",
    config = function()
      vim.g.fugitive_gitlab_domains = { "https://git.adsysco.nl" }
    end,
  },
}
