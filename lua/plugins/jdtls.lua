return {
  "mfussenegger/nvim-jdtls",
  ft = "java",
  config = function()
    local opts = {
      name = "jdtls",

      -- `cmd` defines the executable to launch eclipse.jdt.ls.
      -- `jdtls` must be available in $PATH and you must have Python3.9 for this to work.
      --
      -- As alternative you could also avoid the `jdtls` wrapper and launch
      -- eclipse.jdt.ls via the `java` executable
      -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
      cmd = { "jdtls" },

      -- `root_dir` must point to the root of your project.
      -- See `:help vim.fs.root`
      root_dir = vim.fs.root(0, { "gradlew", "mvnw" }),

      -- Here you can configure eclipse.jdt.ls specific settings
      -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
      -- for a list of options
      settings = {
        java = {},
      },

      -- This sets the `initializationOptions` sent to the language server
      -- If you plan on using additional eclipse.jdt.ls plugins like java-debug
      -- you'll need to set the `bundles`
      --
      -- See https://codeberg.org/mfussenegger/nvim-jdtls#java-debug-installation
      --
      -- If you don't plan on any eclipse.jdt.ls plugins you can remove this
      init_options = {
        bundles = {
          -- config for the debugger
          vim.fn.stdpath("data") .. "/mason/share/java-debug-adapter/com.microsoft.java.debug.plugin-0.53.2.jar",
        },
      },
    }

    -- needed because java fucking sucks and jdtls doesn't fucking attach to new buffers
    -- whenever it doesn't fucking feel like it
    --
    -- god i fucking hate java
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "java" },
      callback = function()
        require("jdtls").start_or_attach(opts)
      end,
    })
  end,
}
