-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Y", 'gg"+yG', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"_dP', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-W>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-/>", "gcc", { noremap = false, silent = false })
-- vim.api.nvim_set_keymap("v", "<Tab>", ">V", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<S-Tab>", "<V", { noremap = true, silent = true })

if vim.g.neovide then
  vim.api.nvim_set_keymap("n", "<C-S-V>", '"+p', { noremap = true, silent = true })
  vim.api.nvim_set_keymap("i", "<C-S-V>", '<Esc>"+p', { noremap = true, silent = true })
end

if not vim.g.vscode then
  vim.api.nvim_set_keymap(
    "n",
    "<C-`>",
    ":lua Snacks.terminal(nil, { cwd = LazyVim.root() })<CR>",
    { desc = "Terminal (Root Dir)" }
  )
  vim.api.nvim_set_keymap("t", "<C-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })
end
