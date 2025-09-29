return {
  {
    "mason-org/mason.nvim",
    opts = {},
    event = "VeryLazy",
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    event = "VeryLazy",
  },
}
