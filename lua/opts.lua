-- Set to spaces only (https://gist.github.com/LunarLambda/4c444238fb364509b72cfb891979f1dd)
-- Can cause appearance issues (https://neovim.io/doc/user/options.html#'tabstop')
-- Some of these seem to get overwritten by vim-sleuth. Try `:verbose set tabstop?` for an example of what sets the value
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1 -- Use value of shiftwidth
vim.opt.smarttab = true  -- Always use shiftwidth
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = true
