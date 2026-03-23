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

-- handle j/k in vscode neovim extension to move by visual lines when no count is provided
if vim.g.vscode then
  vim.keymap.set("n", "j", function()
    if vim.v.count == 0 then
      vim.fn.VSCodeCall("cursorDown")
    else
      vim.api.nvim_feedkeys(vim.v.count .. "j", "n", false)
    end
  end)
  vim.keymap.set("n", "k", function()
    if vim.v.count == 0 then
      vim.fn.VSCodeCall("cursorUp")
    else
      vim.api.nvim_feedkeys(vim.v.count .. "k", "n", false)
    end
  end)
end

-- Shift + scroll to scroll horizontally
vim.keymap.set("n", "<S-ScrollWheelUp>", "zH")
vim.keymap.set("n", "<S-ScrollWheelDown>", "zL")
