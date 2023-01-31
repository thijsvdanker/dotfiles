return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-live-grep-args.nvim" },
      { "tsakirist/telescope-lazy.nvim" },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
      telescope.load_extension("live_grep_args")
      telescope.load_extension("lazy")
    end,
    opts = {
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "smart_case", -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
        live_grep_args = {
          auto_quoting = true, -- enable/disable auto-quoting,
        },
      },
      defaults = {
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        file_ignore_patterns = {
          "node_modules/.*",
          ".git/*",
          "_ide_helper_models.php",
        },
      },
    },
  },
}
