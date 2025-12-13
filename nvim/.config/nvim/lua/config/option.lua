vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.signcolumn = "no"
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.diagnostic.config({
	virtual_lines = {
		only_current_line = true,
	}
})
vim.o.winborder = 'rounded'

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.api.nvim_create_autocmd("InsertEnter", {
	callback = function()
		vim.opt.cursorline = false
		vim.opt.cursorcolumn = false
	end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vim.opt.cursorline = true
		vim.opt.cursorcolumn = true
	end,
})
