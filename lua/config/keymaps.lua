-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "<S-Left>", "<C-o>v<Left>", { desc = "Select left" })
vim.keymap.set("i", "<S-Right>", "<C-o>v<Right>", { desc = "Select right" })
vim.keymap.set("i", "<S-Up>", "<C-o>v<Up>", { desc = "Select up" })
vim.keymap.set("i", "<S-Down>", "<C-o>v<Down>", { desc = "Select down" })
vim.keymap.set({ "n", "i", "v" }, "<D-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>yp", function()
  vim.fn.setreg("+", vim.fn.fnamemodify(vim.fn.expand("%:p"), ":."))
end, { desc = "Copy relative file path" })
vim.keymap.set({ "n", "t" }, "<leader>yt", function()
  Snacks.terminal.toggle("lazytracker")
end, {
  desc = "LazyTracker",
})
vim.keymap.set("n", "<leader>w<", "<C-w><", { desc = "Decrease width" })
vim.keymap.set("n", "<leader>w>", "<C-w>>", { desc = "Increase width" })
vim.keymap.set("n", "diw", '"_diw', { desc = "Delete inner word without yanking" })
vim.keymap.set("n", "ciw", '"_ciw', { desc = "Change inner word without yanking" })
