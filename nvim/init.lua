-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.minifiles")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("tokyonight-night")
