-- File: lua/custom/plugins/gopher.lua

return {
	"olexsmir/gopher.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function(_, opts)
		require("gopher").setup(opts)
	end,
	build = function()
		vim.cmd [[silent! GoInstallDeps]]
	end,
}
