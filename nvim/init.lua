-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.oil")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("tokyonight-night")
