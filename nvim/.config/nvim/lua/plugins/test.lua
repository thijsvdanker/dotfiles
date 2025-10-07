return {
  "olimorris/neotest-phpunit",
  {
    "nvim-neotest/neotest",
    dependencies = {
      "V13Axel/neotest-pest",
    },
    opts = {
      discovery = {
        enabled = false,
        concurrent = 1,
      },
      adapters = { "neotest-phpunit", "neotest-pest" },
    },
  },
}
