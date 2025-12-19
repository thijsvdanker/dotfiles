return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
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
          name = "Listen for Xdebug from DAP 9003",
          port = 9003,
          pathMappings = {
            ["/var/www/html/regiweb-development"] = "${workspaceFolder}",
          },
          xdebugSettings = {
            max_data = 9876,
            max_children = 256,
            max_depth = 3,
          },
        },
        {
          type = "php",
          request = "launch",
          name = "Listen for Xdebug for Extranet",
          port = 9003,
          pathMappings = {
            ["/var/www/html/extranet-development"] = "${workspaceFolder}",
          },
          xdebugSettings = {
            max_data = 9876,
            max_children = 256,
            max_depth = 3,
          },
        },
        {
          type = "php",
          request = "launch",
          name = "Listen for Xdebug from 9000",
          port = 9000,
          pathMappings = {
            ["/var/www/html/regiweb-development"] = "${workspaceFolder}",
            ["/var/www/html/regiweb-master"] = "${workspaceFolder}",
          },
          xdebugSettings = {
            max_data = 9876,
            max_children = 256,
            max_depth = 3,
          },
        },
      }
    end,
  },
}
