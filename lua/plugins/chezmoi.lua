return {
  {
    "xvzc/chezmoi.nvim",
    cmd = { "ChezmoiEdit" },
    opts = {
      edit = {
        watch = false,
        force = false,
      },
      notification = {
        on_open = true,
        on_apply = true,
        on_watch = false,
      },
      telescope = {
        select = { "<CR>" },
      },
    },
    init = function()
      -- run chezmoi edit on file enter
      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = { os.getenv("HOME") .. "/.local/share/chezmoi/*" },
        callback = function()
          vim.schedule(require("chezmoi.commands.__edit").watch)
        end,
      })
    end,
  },
}
