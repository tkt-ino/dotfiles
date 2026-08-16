-- Auto format on save
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
		if not client:supports_method('textDocument/willSaveWaitUntil') and client:supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
				buffer = ev.buf,
				callback = function()
					vim.lsp.buf.format({
						bufnr = ev.buf,
						id = client.id,
						timeout_ms = 1000,
						async = false,
					})
				end
			})
		end
		vim.keymap.set('n', '<space>i', function()
			vim.lsp.buf.format({ bufnr = ev.buf, id = client.id })
		end, { buffer = ev.buf, desc = 'Format buffer' })
	end
})

-- vim.lsp.inlay_hint.enable(true)
vim.diagnostic.config({
	virtual_lines = {
		only_current_line = true,
	}
})

local lsps = {
	"lua_ls",
	"tinymist",
	"pyright",
	-- "pyrefly",
	"ruff",
	"rust_analyzer",
	"clangd",
	-- "ts_ls",
	"tsc",
}

vim.lsp.enable(lsps)
