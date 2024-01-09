return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	keys = {
		{ "<C-a>",   function() require("harpoon"):list():append() end,  desc = "harpoon mark file", },
		{
			"<C-e>",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "harpoon toggle quick menu",
		},
		{ "<C-h>",   function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
		{ "<C-t>",   function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
		{ "<C-n>",   function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
		{ "<C-s>",   function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
		-- Toggle previous & next buffers stored within Harpoon list
		{ "<C-S-P>", function() require("harpoon"):list():prev() end,    desc = "harpoon previous buffer", },
		{ "<C-S-N>", function() require("harpoon"):list():next() end,    desc = "harpoon next buffer", },
	},
}
