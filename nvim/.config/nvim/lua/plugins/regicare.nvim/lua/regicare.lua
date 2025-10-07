local M = {}

M.setup = function()
  vim.api.nvim_create_user_command("CopyGitlabUrlDev", function()
    M.copyGitUrl()
  end, {})

  vim.api.nvim_create_user_command("CopyGitlabUrl", function()
    M.copyGitUrl()
  end, {})

  vim.api.nvim_create_user_command("RestoreScout", function(opts)
    local args = vim.split(opts.args, " ")
    if #args < 1 then
      print("Usage: :RestoreScout <DB_NAME>")
      return
    end
    M.restoreScout(args[1])
  end, {
    nargs = "+",
    desc = "Restore a backup to Scout",
  })

  vim.api.nvim_create_user_command("UseScoutDB", function(opts)
    local args = vim.split(opts.args, " ")
    if #args < 1 then
      print("Usage: :UseScoutDB <DB_NAME>")
      return
    end
    M.setScoutDB(args[1])
  end, {
    nargs = "+",
    desc = "Use the Scout DB",
  })
  vim.api.nvim_create_user_command("UseHavenDB", M.setHavenDB, {})
  --
end

--- @return string
local connection_string = function()
  vim.cmd("Dotenv " .. vim.fn.getcwd() .. "/.env.dev.regiweb.haven")

  local host = vim.fn.getenv("DB_HOST")
  if host == "mssql" then
    host = "127.0.0.1"
  end

  local username = vim.fn.getenv("DB_USERNAME")
  local password = vim.fn.getenv("DB_PASSWORD")
  local database = vim.fn.getenv("DB_DATABASE")
  local port = vim.fn.getenv("DB_PORT")

  return string.format("sqlserver://%s:%s@%s:%s/%s", username, password, host, port, database)
end

local function get_username_from_db()
  vim.cmd(
    "DB "
      .. connection_string()
      .. " SELECT userID, userName from dbo.usrPerson WHERE userID IN(119, 120, 18) OR userName like '%adsysco%'"
  )
end

M.get_username = function()
  get_username_from_db()
end

M.restoreScout = function(args)
  vim.cmd("normal! !source ~/.aliases && !restoreScout " .. args .. " bckp" .. args)
  print("Restored backup " .. args .. " to bckp" .. args)
end

M.setScoutDB = function(args)
  -- vim.cmd("UpdateEnv DB_HOST scout.adsysco.local")
  vim.cmd("UpdateEnv DB_HOST 192.168.0.20")
  vim.cmd("UpdateEnv DB_USERNAME devIntrepid")
  vim.cmd("UpdateEnv DB_PASSWORD efykdgqbyr5s7xxwgntyp2hv46af4u5v")
  vim.cmd("UpdateEnv DB_USERNAME_POSTCODE devIntrepid")
  vim.cmd("UpdateEnv DB_PASSWORD_POSTCODE efykdgqbyr5s7xxwgntyp2hv46af4u5v")
  vim.cmd("UpdateEnv DB_USERNAME_INVENTORY devIntrepid")
  vim.cmd("UpdateEnv DB_PASSWORD_INVENTORY efykdgqbyr5s7xxwgntyp2hv46af4u5v")
  vim.cmd("UpdateEnv DB_DATABASE " .. args)
  vim.cmd("DB redis://127.0.0.1:63790 FLUSHALL")
end

M.setHavenDB = function()
  local updateEnv = require("update_env")
  updateEnv.update_env_variable(".env", "DB_HOST", "127.0.0.1")
  updateEnv.update_env_variable(".env.dev.regiweb.haven", "DB_HOST", "mssql")

  vim.cmd("UpdateEnv DB_USERNAME SA")
  vim.cmd("UpdateEnv DB_PASSWORD RegiWeb123")
  vim.cmd("UpdateEnv DB_USERNAME_POSTCODE SA")
  vim.cmd("UpdateEnv DB_PASSWORD_POSTCODE RegiWeb123")
  vim.cmd("UpdateEnv DB_USERNAME_INVENTORY SA")
  vim.cmd("UpdateEnv DB_PASSWORD_INVENTORY RegiWeb123")
  vim.cmd("UpdateEnv DB_DATABASE devDemo")
  vim.cmd("DB redis://127.0.0.1:63790 FLUSHALL")
end

M.copyGitUrlDev = function()
  local buf = vim.api.nvim_get_current_buf()
  local file_path = vim.api.nvim_buf_get_name(buf)
  local relative_path = vim.fn.fnamemodify(file_path, ":.")

  local gitlab_url = "https://git.adsysco.nl/adsysco/regiweb/-/blob/development/" .. relative_path

  -- Confirm the action
  -- Write the file path to the clipboard
  vim.fn.setreg("+", gitlab_url)
  print("File path copied to clipboard: " .. gitlab_url)
end

M.copyGitUrl = function(branch)
  local branch_name = branch or "development"
  local buf = vim.api.nvim_get_current_buf()
  local file_path = vim.api.nvim_buf_get_name(buf)
  local relative_path = vim.fn.fnamemodify(file_path, ":.")

  local gitlab_url = "https://git.adsysco.nl/adsysco/regiweb/-/blob/" .. branch_name .. "/" .. relative_path

  -- Write the file path to the clipboard
  vim.fn.setreg("+", gitlab_url)
  print("File path copied to clipboard: " .. gitlab_url)
end

return M
