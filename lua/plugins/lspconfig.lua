return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  keys = {
    {
      "<leader>cl",
      function()
        Snacks.picker.lsp_config()
      end,
      desc = "Lsp Info",
    },
    {
      "<c-k>",
      function()
        return vim.lsp.buf.signature_help()
      end,
      mode = "i",
      desc = "Signature Help",
    },
    {
      "<leader>ca",
      vim.lsp.buf.code_action,
      desc = "Code Action",
      mode = { "n", "v" },
    },
    {
      "<leader>cc",
      vim.lsp.codelens.run,
      desc = "Run Codelens",
      mode = { "n", "v" },
    },
    {
      "<leader>cC",
      vim.lsp.codelens.refresh,
      desc = "Refresh & Display Codelens",
      mode = { "n" },
    },
    {
      "<leader>cR",
      function()
        Snacks.rename.rename_file()
      end,
      desc = "Rename File",
      mode = { "n" },
    },
    { "<leader>cr", vim.lsp.buf.rename, desc = "Rename" },
  },
}
