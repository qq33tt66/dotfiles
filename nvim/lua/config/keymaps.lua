-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
map("i", "jk", "<Esc>", { noremap = true, silent = true })
-- map("n", "<Tab>", function()
--   if not MiniFiles.close() then
--     MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
--   end
-- end, { desc = "File explorer" })

map("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>")
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<Tab>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
