return {
  {
    "vim-test/vim-test",
    event = "VeryLazy",
    keys = {
      { "<leader>tf", "<cmd>TestFile<cr>", desc = "Test file" },
      { "<leader>tr", "<cmd>TestNearest<cr>", desc = "Test Nearest" },
      { "<leader>tp", "<cmd>TestLast<cr>", desc = "Test Recent" },
      { "<leader>tg", "<cmd>TestVisit<cr>", desc = "Go to recent test file" },
    },
    config = function()
      vim.cmd([[
        function! FloatermStrategy(cmd)
          execute 'silent FloatermKill'
          execute 'FloatermNew! '.a:cmd.' |less -X'
        endfunction
        let g:test#custom_strategies = {'floaterm': function('FloatermStrategy')}
        let g:test#strategy = 'floaterm'
      ]])
    end,
  },
}
