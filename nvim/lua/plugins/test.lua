return {
  "olimorris/neotest-phpunit",
  {
    "nvim-neotest/neotest",
    opts = {
      discovery = {
        enabled = false,
        concurrent = 1,
      },
      adapters = { "neotest-phpunit" },
    },
  },
}
