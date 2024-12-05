return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      local logo = [[
         ⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀
        ⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿
                ⣿⣿⣿⣿⣿⣿⣿
                ⣿⣿⣿⣿⣿⣿⣿
   ⢀⣴⣷⣤⡀        ⣿⣿⣿⣿⣿⣿⣿       ⢀⣴⣷⣤⡀
 ⢀⣴⣿⣿⣿⣿⣿⣦⡀      ⣿⣿⣿⣿⣿⣿⣿     ⢀⣴⣿⣿⣿⣿⣿⣦⡀
   ⣿⣿⣿⣿⣿        ⣿⣿⣿⣿⣿⣿⣿       ⣿⣿⣿⣿⣿
   ⢿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⡿
    ⠉⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠿⣿⣿⣿⠿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠉
                   ⠉
       ~  I use NeoVim (BTW)  ~
      ]]

      opts.section.header.val = vim.split(logo, "\n")
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.buttons.val = {}
    end,
  },
}
