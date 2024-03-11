return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"cssls",
					"bashls",
					"eslint",
					"html",
					"jsonls",
					"quick_lint_js",
					"marksman",
					"pyre",
					"rust_analyzer",
					"sqlls",
					"taplo", -- TOML
					"tailwindcss",
					"tsserver",
					"lemminx", --XML
					"hydra_lsp", -- YAML
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()
			local configs = require("lspconfig/configs")
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			lspconfig.emmet_ls.setup({
				-- on_attach = on_attach,
				capabilities = capabilities,
				filetypes = {
					"css",
					"eruby",
					"html",
					"javascript",
					"javascriptreact",
					"less",
					"sass",
					"scss",
					"svelte",
					"pug",
					"typescriptreact",
					"vue",
				},
				init_options = {
					html = {
						options = {
							["bem.enabled"] = true,
						},
					},
				},
			})
			lspconfig.lua_ls.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.eslint.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.html.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.quick_lint_js.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.marksman.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.pyre.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.sqlls.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.taplo.setup({
				capabilities = cmp_capabilities,
			}) -- TOML
			lspconfig.tailwindcss.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = cmp_capabilities,
			})
			lspconfig.lemminx.setup({
				capabilities = cmp_capabilities,
			}) --XML
			lspconfig.hydra_lsp.setup({
				capabilities = cmp_capabilities,
			})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		end,
	},
}
