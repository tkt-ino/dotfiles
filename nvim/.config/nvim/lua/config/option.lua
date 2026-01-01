vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.signcolumn = "yes"
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.diagnostic.config({
	virtual_lines = {
		only_current_line = true,
	}
})
vim.o.winborder = "rounded"

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

-- For typst preview
vim.api.nvim_create_user_command("OpenPdf", function()
	local filepath = vim.api.nvim_buf_get_name(0)
	if filepath:match("%.typ$") then
		local pdf_path = filepath:gsub("%.typ$", ".pdf")
		vim.system({ "zathura", pdf_path })
	end
end, {})
