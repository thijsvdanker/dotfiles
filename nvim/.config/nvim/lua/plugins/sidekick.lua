return {
  {
    "folke/sidekick.nvim",
    opts = {
      cli = {
        -- Custom context variable for Harpoon files
        context = {
          harpoon = function(ctx)
            local ok, harpoon = pcall(require, "harpoon")
            if not ok then
              return false
            end
            local list = harpoon:list()
            if not list or not list.items or #list.items == 0 then
              return false
            end

            local ret = {}
            for _, item in ipairs(list.items) do
              if item.value and item.value ~= "" then
                local path = item.value
                -- Make path relative to cwd
                local ok_rel, rel = pcall(vim.fs.relpath, path, ctx.cwd)
                if ok_rel and rel and rel ~= "" then
                  path = rel
                end
                table.insert(ret, "- @" .. path)
              end
            end

            return table.concat(ret, "\n")
          end,
        },
        -- Custom prompt that wraps harpoon files
        prompts = {
          harpoon = "These are the key files I'm working with:\n{harpoon}",
        },
      },
    },
    keys = {
      {
        "<leader>ah",
        function()
          require("sidekick.cli").send({ prompt = "harpoon" })
        end,
        desc = "Send Harpoon files",
      },
    },
  },
}
