return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    {
      '<C-a>',
      function()
        require('harpoon'):list():append()
      end,
      desc = 'harpoon mark file',
    },
    {
      '<C-h><C-l>',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'harpoon toggle quick menu',
    },
    {
      '<space>1',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = 'harpoon to file 1',
    },
    {
      '<space>2',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = 'harpoon to file 2',
    },
    {
      '<space>3',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = 'harpoon to file 3',
    },
    {
      '<space>4',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = 'harpoon to file 4',
    },
    {
      '<space>5',
      function()
        require('harpoon'):list():select(5)
      end,
      desc = 'harpoon to file 5',
    },
    -- Toggle previous & next buffers stored within Harpoon list
    {
      '<C-S-P>',
      function()
        require('harpoon'):list():prev()
      end,
      desc = 'harpoon previous buffer',
    },
    {
      '<C-S-N>',
      function()
        require('harpoon'):list():next()
      end,
      desc = 'harpoon next buffer',
    },
  },
}
