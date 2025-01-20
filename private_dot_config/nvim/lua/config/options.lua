-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.root_spec = { "cwd" }
vim.opt.wrap = true
vim.opt.scrolloff = 4

if vim.g.neovide then
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.o.guifont = "VictorMono Nerd Font:h11"
  vim.g.neovide_scale_factor = 0.95
  -- vim.g.neovide_fullscreen = true

  vim.api.nvim_set_keymap("n", "<C-F11>", "", {
    noremap = true,
    callback = function()
      vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
    end,
    desc = "Toggle Fullscreen",
  })
end
