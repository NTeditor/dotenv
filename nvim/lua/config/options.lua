local function set_tabsize(size)
  vim.o.tabstop = size
  vim.o.softtabstop = size
  vim.o.shiftwidth = size
end

vim.o.clipboard = "unnamedplus"
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
set_tabsize(2)
vim.o.wrap = false

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    set_tabsize(4)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    set_tabsize(4)
  end,
})
