-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`

-- An embedded Neovim must not outlive its UI client.  In particular, this
-- prevents a disconnected GUI client from leaving an orphaned nvim --embed
-- process running indefinitely in the background.
if vim.tbl_contains(vim.v.argv, "--embed") then
  vim.api.nvim_create_autocmd("UILeave", {
    callback = function()
      if #vim.api.nvim_list_uis() == 0 then
        vim.schedule(function()
          vim.cmd("qa!")
        end)
      end
    end,
  })
end
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
