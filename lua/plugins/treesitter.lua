return {
  { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    event = "VeryLazy",
    opts = function()
      local opts = {
        ensure_installed = {
          "bash",
          "c",
          "diff",
          "html",
          "lua",
          "luadoc",
          "markdown",
          "markdown_inline",
          "query",
          "vim",
          "vimdoc",
          "python",
        },
        -- Autoinstall languages that are not installed
        highlight = {
          enable = true,
          -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
          --  If you are experiencing weird indenting issues, add the language to
          --  the list of additional_vim_regex_highlighting and disabled languages for indent.
          additional_vim_regex_highlighting = { "ruby" },
        },
        indent = { enable = true, disable = { "ruby" } },
      }
      return opts
    end,
    config = function(_, opts)
      local TS = require("nvim-treesitter")

      -- setup treesitter
      TS.setup(opts)

      vim.api.nvim_create_autocmd("BufReadPost", {
        pattern = "*",
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
