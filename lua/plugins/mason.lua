return {
  {
    "mason-org/mason.nvim",
    opts = {},
    event = "VeryLazy",
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = {
        exclude = {
          "rust_analyzer",
          "jdtls",
        },
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    event = "VeryLazy",
  },
}
