-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- Opt+← / Opt+→ -> jump by word
vim.keymap.set("i", "<M-b>", "<C-Left>", opts)
vim.keymap.set("i", "<M-f>", "<C-Right>", opts)

-- Opt+Delete / Opt+Backspace -> delete word
vim.keymap.set("i", "<M-BS>", "<C-w>", opts) -- delete word before cursor
vim.keymap.set("i", "<M-Delete>", "<C-o>dw", opts) -- delete word after cursor

-- jj -> escape insert mode
vim.keymap.set("i", "jj", "<Esc>", opts)

-- Use 'm' as an explicit "cut" (saves to unnamed register, ready to paste with p)
vim.keymap.set({ "n", "v" }, "m", "d", { noremap = true })
vim.keymap.set("n", "mm", "dd", { noremap = true })
