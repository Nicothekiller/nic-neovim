--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.loader.enable()

-- vim options
--  NOTE: Must be loaded before lazy aka require("configs.lazy")
--  otherwise mappings could be wrong due to leader / localleader
require("configs.opts")

-- vim keymaps
require("configs.keymaps")

-- auto commands
require("configs.autocmd")

-- setup lazy package manager
require("configs.lazy")

-- Colorscheme to use
vim.cmd.colorscheme("onedark")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
