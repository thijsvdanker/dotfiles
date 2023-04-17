return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = {
        nls.builtins.formatting.blade_formatter.with({
          extra_filetypes = { "phtml" },
        }),
        nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.flake8,
      }
    end,
  },
}
