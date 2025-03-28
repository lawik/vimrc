vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
require("config.lazy")
require("fzf-lua")
require("nvim-tree")

local set = vim.opt
set.hidden = true
set.hlsearch = true
set.mouse = 'a'
set.wildignorecase = true
set.wildmenu = true
set.wildmode = 'longest,list,full'
set.signcolumn = 'yes'
set.tabstop = 4
set.expandtab = true
set.shiftwidth = 4
vim.cmd[[colorscheme dracula]]

vim.cmd('source ~/vimrc/vim/config.vim')
