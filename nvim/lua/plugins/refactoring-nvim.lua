return {
  "ThePrimeagen/refactoring.nvim",
  opts = {
    print_var_statements = {
      -- add a custom print var statement for cpp
      php = {
        'dump("%s", %s);',
      },
    },
  },
}
