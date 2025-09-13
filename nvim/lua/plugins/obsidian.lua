return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "work",
        path = "/Users/thijs/Library/Mobile Documents/iCloud~md~obsidian/Documents/Work",
      },
      {
        name = "personal",
        path = "/Users/thijs/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal",
      },
    },

    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "notes/dailies",
    },
    -- mappings = {
    --   -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    --   ["gf"] = {
    --     action = function()
    --       return require("obsidian").util.gf_passthrough()
    --     end,
    --     opts = { noremap = false, expr = true, buffer = true },
    --   },
    --   -- Toggle check-boxes.
    --   ["<leader>ch"] = {
    --     action = function()
    --       return require("obsidian").util.toggle_checkbox()
    --     end,
    --     opts = { buffer = true },
    --   },
    --   ["<leader>ood"] = {
    --     action = ":ObsidianToday<CR>",
    --     opts = { desc = "Today" },
    --   },
    --   ["<leader>ooy"] = {
    --     action = ":ObsidianYesterday<CR>",
    --     opts = { desc = "Yesterday" },
    --   },
    --   ["<leader>oot"] = {
    --     action = ":ObsidianTomorrow<CR>",
    --     opts = { desc = "Tomorrow" },
    --   },
    --   ["<leader>oow"] = {
    --     action = ":ObsidianWorkspace work<CR>:ObsidianToday<CR>",
    --     opts = { desc = "Open Work vault" },
    --   },
    --   ["<leader>oop"] = {
    --     action = ":ObsidianWorkspace personal<CR>:ObsidianToday<CR>",
    --     opts = { desc = "Open Personal vault" },
    --   },
    -- },
    note_id_func = function(title)
      -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
      -- In this case a note with the title 'My new note' will be given an ID that looks
      -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
      local suffix = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. "-" .. suffix
    end,
    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      vim.ui.open(url) -- need Neovim 0.10.0+
    end,

    -- see below for full list of options 👇
  },
}
