return { -- Fuzzy Finder (files, lsp, etc)
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",

    lazy = true,

    dependencies = {
      "nvim-lua/plenary.nvim",
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        "nvim-telescope/telescope-fzf-native.nvim",

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = "make",

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
      -- { "nvim-telescope/telescope-ui-select.nvim" },

      -- Useful for getting pretty icons, but requires a Nerd Font.
      { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    },

    keys = {
      {
        "<leader>sh",
        -- require("telescope.builtin").help_tags,
        "<cmd>Telescope help_tags<CR>",
        desc = "[S]earch [H]elp",
      },
      {
        "\\",
        -- require("telescope.builtin").find_files,
        "<cmd>Telescope find_files<CR>",
        desc = "[S]earch [F]iles",
      },
      {
        "<leader>sk",
        "<cmd>Telescope keymaps<CR>",
        desc = "[S]earch [K]eymaps",
      },
      {
        "<leader>ss",
        "<cmd>Telscope builtin<CR>",
        desc = "[S]earch [S]elect Telescope",
      },
      {
        "<leader>sw",
        "<cmd>Telescope grep_string<CR>",
        desc = "[S]earch current [W]ord",
      },
      {
        "<leader>sg",
        -- builtin.live_grep,
        "<cmd>Telescope live_grep<CR>",
        desc = "[S]earch by [G]rep",
      },
      {
        "<leader>sd",
        -- builtin.diagnostics,
        "<cmd>Telescope diagnostics<CR>",
        desc = "[S]earch [D]iagnostics",
      },
      {
        "<leader>sr",
        -- builtin.resume,
        "<cmd>Telescope resume<CR>",
        desc = "[S]earch [R]esume",
      },
      {
        "<leader>s.",
        -- builtin.oldfiles,
        "<cmd>Telescope oldfiles<CR>",
        desc = '[S]earch Recent Files ("." for repeat)',
      },
      {
        "<leader><leader>",
        -- builtin.buffers,
        "<cmd>Telescope buffers<CR>",
        desc = "[ ] Find existing buffers",
      },
    },

    config = function()
      -- require("telescope").setup({
      --   -- defaults = {
      --   --   mappings = {
      --   --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
      --   --   },
      --   -- },
      --   -- pickers = {}
      --   extensions = {
      --     ["ui-select"] = {
      --       require("telescope.themes").get_dropdown(),
      --     },
      --   },
      -- })

      -- Enable Telescope extensions if they are installed
      pcall(require("telescope").load_extension, "fzf")
      -- pcall(require("telescope").load_extension, "ui-select")
    end,
  },
}
