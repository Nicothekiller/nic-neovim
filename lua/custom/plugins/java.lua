return {
  {
    "nvim-java/nvim-java",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- Java plugin setup
      require("java").setup()
      require("lspconfig").jdtls.setup({})
    end,
  },
}
