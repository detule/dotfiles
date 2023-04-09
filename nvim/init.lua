vim.cmd([[
execute pathogen#infect()
filetype plugin on
filetype indent on
syntax enable

colorscheme railscasts

set clipboard=unnamedplus
]])
require("globals")
require("options")
require("plugins")
require("mappings")
