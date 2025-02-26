return {
    {
    -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true },
  {
    -- Main LSP Configuration
    'neovim/nvim-lspconfig',
        dependencies = {
          -- Automatically install LSPs and related tools to stdpath for Neovim
          { 'williamboman/mason.nvim', config = true }, -- NOTE: Must be loaded before dependants
          'williamboman/mason-lspconfig.nvim',
          'WhoIsSethDaniel/mason-tool-installer.nvim',

          -- Useful status updates for LSP.
          -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
          { 'j-hui/fidget.nvim', opts = {} },
        },
        config = function()
          local servers = {
            lua_ls = {
              settings = {
                Lua = {
                  completion = {
                    callSnippet = 'Replace',
                  },
                  diagnostics = { disable = { 'missing-fields' } },
                },
              },
            },
          }

          require('mason').setup()

          local ensure_installed = vim.tbl_keys(servers or {})
          vim.list_extend(ensure_installed, {
            'stylua', -- Used to format Lua code
            'pint',
            'intelephense',
          })

          require('mason-tool-installer').setup { ensure_installed = ensure_installed }

          require('mason-lspconfig').setup {
            handlers = {
              function(server_name)
                local server = servers[server_name] or {}
                -- server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                require('lspconfig')[server_name].setup(server)
              end,
            },
          }
        end,
    },
}
-- vim: ts=2 sts=2 sw=2 et
