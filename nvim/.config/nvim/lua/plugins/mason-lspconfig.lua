return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		automatic_enable = false,
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
			"clangd",
			"tinymist",
			"pyright",
			"ruff",
		}
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
	},
}
