return {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000, -- Make sure to load this before all the other start plugins.

    init = function()
      require("onedark").load()

      -- You can configure highlights by doing something like:
      vim.cmd.hi("Comment gui=none")
    end, -- Highlight todo, notes, etc in comments
  },
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
}
