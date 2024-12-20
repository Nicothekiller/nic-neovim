return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },

  -- dependencies = { -- uncomment for dap integration
  --   "mfussenegger/nvim-dap",
  -- },

  config = function()
    local config = {
      cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
      root_dir = vim.fs.dirname(
        vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]
      ),
    }

    -- config["init_options"] = { -- uncomment for dap integration
    --   bundles = {
    --     vim.fn.glob(
    --       vim.fn.expand(
    --         "~/.local/share/nvim/mason/share/java-debug-adapter/com.microsoft.java.debug.plugin-*.jar"
    --       ),
    --       1
    --     ),
    --   },
    -- }

    require("jdtls").start_or_attach(config)
  end,
}
