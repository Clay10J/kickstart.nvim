-- File: lua/custom/plugins/filetree.lua
--	installs the nvim-neo-tree.nvim plugins
--
-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup {
			window = {
				position = "right"
			}
		}
		vim.keymap.set('n', '<leader>N', '<Cmd>Neotree toggle<CR>')
	end,
}
