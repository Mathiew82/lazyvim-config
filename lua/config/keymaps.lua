-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Paste the clipboard register
vim.keymap.set("n", "P", '"0p')

-- Search functions and variables inside file
vim.keymap.set("n", "<leader>o", "<cmd>:Telescope lsp_document_symbols<cr>")

-- Delete all buffers but the current one --
vim.keymap.set("n", "<leader>bq", '<Esc>:%bdelete|edit #|normal`"<cr>')

--
vim.keymap.set("i", "<C-d>", "<C-d>zz")
vim.keymap.set("i", "<C-u>", "<C-u>zz")
vim.keymap.set("i", "<C-b>", "<C-o>de")

-- Disable key mappings in insert mode
vim.api.nvim_set_keymap("i", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Nop>", { noremap = true, silent = true })
-- Disable key mappings in normal mode
vim.api.nvim_set_keymap("n", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<Nop>", { noremap = true, silent = true })
-- Disable key mappings in visual block mode
vim.api.nvim_set_keymap("x", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", "<Nop>", { noremap = true, silent = true })
