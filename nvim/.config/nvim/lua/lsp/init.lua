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

-- For tinymist
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.typ",
	callback = function(args)
		vim.lsp.buf.format({
			bufnr = args.buf,
			async = false,
		})
	end,
})

-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
-- 	callback = function(args)
-- 		local client = vim.lsp.get_client_by_id(args.data.client_id)
-- 		if client == nil then
-- 			return
-- 		end
-- 		if client.name == 'ruff' then
-- 			-- Disable hover in favor of Pyright
-- 			client.server_capabilities.hoverProvider = false
-- 		end
-- 	end,
-- 	desc = 'LSP: Disable hover capability from Ruff',
-- })

-- For ruff
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*.py",
-- 	callback = function(args)
-- 		vim.lsp.buf.format({
-- 			bufnr = args.buf,
-- 			async = false,
-- 			filter = function(client)
-- 				return client.name == "ruff"
-- 			end,
-- 		})
-- 	end,
-- })

-- -- lua_ls.lua
-- local lua_ls_opts = require("lsp.lua_ls")
-- vim.lsp.config("lua_ls", lua_ls_opts)
-- vim.lsp.enable("lua_ls")
--
-- -- tinymist.lua
-- local tinymist_opts = require("lsp.tinymist")
-- vim.lsp.config("tinymist", tinymist_opts)
-- vim.lsp.enable("tinymist")
--
-- -- pyright.lua
-- local pyright_opts = require("lsp.pyright")
-- vim.lsp.config("pyright", pyright_opts)
-- vim.lsp.enable("pyright")
--
-- -- ruff.lua
-- local ruff_opts = require("lsp.ruff")
-- vim.lsp.config("ruff", ruff_opts)
-- vim.lsp.enable("ruff")
--
-- -- rust_analyzer.lua
-- local rust_analyzer_opts = require("lsp.rust_analyzer")
-- vim.lsp.config("rust_analyzer", rust_analyzer_opts)
-- vim.lsp.enable("rust_analyzer")

local lsp = {
	"lua_ls",
	"tinymist",
	"pyright",
	"ruff",
	"rust_analyzer"
}

for _, value in ipairs(lsp) do
	local path = "lsp." .. value
	local lsp_opts = require(path)
	vim.lsp.config(value, lsp_opts)
	vim.lsp.enable(value)
end
