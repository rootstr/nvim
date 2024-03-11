return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local tree_sitter_config = require("nvim-treesitter.configs")
		tree_sitter_config.setup({
			ensure_installed = {
				"lua",
				"javascript",
				"html",
				"rust",
				"c_sharp",
				"css",
				"csv",
				"slint",
				"typescript",
				"xml",
				"yaml",
				"vim",
				"python",
				"json",
				"java",
				"tsx",
				"toml",
			},
			highlight = { enable = true },
			indent = { enable = true },
			sync_install = false,
			auto_install = true,
		})
	end,
}
