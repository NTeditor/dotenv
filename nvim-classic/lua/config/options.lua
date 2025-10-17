local function set_tabsize(size)
  vim.o.tabstop = size
  vim.o.softtabstop = size
  vim.o.shiftwidth = size
end

vim.o.clipboard = "unnamed"
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

vim.keymap.set('n', '<leader>y', '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set('n', '<leader>Y', '"+Y', { desc = "Yank line to system clipboard" })
vim.keymap.set('n', '<leader>d', '"+d', { desc = "Delete to system clipboard" })
vim.keymap.set('n', '<leader>D', '"+D', { desc = "Delete line to system clipboard" })
vim.keymap.set('v', '<leader>y', '"+y', { desc = "Yank selection to system clipboard" })
vim.keymap.set('v', '<leader>d', '"+d', { desc = "Delete selection to system clipboard" })
vim.keymap.set('n', '<leader>p', '"+p', { desc = "Paste from system clipboard after cursor" })
vim.keymap.set('n', '<leader>P', '"+P', { desc = "Paste from system clipboard before cursor" })
vim.keymap.set('v', '<leader>p', '"+p', { desc = "Paste from system clipboard in visual mode" })
