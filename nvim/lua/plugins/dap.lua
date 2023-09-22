return {
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    config = function(plugin)
      plugin._.super.config(plugin, {})
      local dap = require("dap")
      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { os.getenv("HOME") .. "/Workspace/vscode-php-debug/out/phpDebug.js" },
      }

      dap.configurations.php = {
        {
          type = "php",
          request = "launch",
          name = "Listen for Xdebug",
        },
      }
    end,
  },
}
