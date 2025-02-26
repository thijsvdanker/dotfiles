local M = {}

--- Updates or adds a variable in the .env file
---@param file_path string The path to the .env file
---@param var_name string The name of the variable to update
---@param new_value string The new value for the variable
function M.update_env_variable(file_path, var_name, new_value)
  local env_file = vim.fn.expand(file_path or ".env")
  local lines = {}
  local updated = false

  -- Read the .env file or create it if it doesn't exist
  if vim.fn.filereadable(env_file) == 1 then
    lines = vim.fn.readfile(env_file)
  end

  -- Update or add the variable
  for i, line in ipairs(lines) do
    if line:match("^" .. var_name .. "=") then
      lines[i] = var_name .. "=" .. new_value
      updated = true
    end
  end

  if not updated then
    table.insert(lines, var_name .. "=" .. new_value)
  end

  -- Write the updated lines back to the .env file
  vim.fn.writefile(lines, env_file)
  print("Updated " .. var_name .. " in " .. env_file)
end

-- Create a Neovim command to update the variable
vim.api.nvim_create_user_command("UpdateEnv", function(opts)
  local args = vim.split(opts.args, " ")
  if #args < 2 then
    print("Usage: :UpdateEnv <VAR_NAME> <NEW_VALUE>")
    return
  end
  local var_name, new_value = args[1], table.concat(args, " ", 2)
  M.update_env_variable(".env", var_name, new_value)
  M.update_env_variable(".env.dev.regiweb.haven", var_name, new_value)
end, {
  nargs = "+",
  desc = "Update or add a variable in the .env file",
})

return M
