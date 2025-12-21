vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.scrolloff = 10

vim.keymap.set({ "i", "v" }, "df", "<Esc>", { desc = "Esc" })
vim.keymap.set({ "i", "v" }, "fd", "<Esc>", { desc = "Esc" })
vim.keymap.set({ "t" }, "df", "<C-\\><C-n>", { desc = "Esc" })
vim.keymap.set({ "t" }, "fd", "<C-\\><C-n>", { desc = "Esc" })
vim.keymap.set({ "i", "v" }, "<Esc>", "<Nop>", { desc = "Disable Esc" })
vim.keymap.set({ "n", "v" }, "<leader><leader>", '"+', { desc = "System clipboard" })

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("lazy").update({ show = false })
	end,
})
