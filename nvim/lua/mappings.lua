VIM_KEYMAP_SET({"i", "n"}, "<C-a>", "<Home>", NOREMAP)
VIM_KEYMAP_SET({"i", "n"}, "<C-e>", "<End>", NOREMAP)

VIM_KEYMAP_SET({"n"}, "zz", ":update!<CR>", NOREMAP_SILENT)
VIM_KEYMAP_SET({"v"}, "zz", "<C-C>:update!<CR>", NOREMAP_SILENT)
VIM_KEYMAP_SET({"i"}, "zz", "<ESC>:update!<CR>", NOREMAP_SILENT)

VIM_KEYMAP_SET({"n"}, "<S-left>", ":bp<CR>", NOREMAP_SILENT)
VIM_KEYMAP_SET({"n"}, "<S-right>", ":bn<CR>", NOREMAP_SILENT)
VIM_KEYMAP_SET({"i"}, "<S-left>", "<C-O>:bp<CR>", NOREMAP_SILENT)
VIM_KEYMAP_SET({"i"}, "<S-right>", "<C-O>:bn<CR>", NOREMAP_SILENT)

VIM_KEYMAP_SET({"n"}, "<C-left>", "b", NOREMAP_SILENT)
VIM_KEYMAP_SET({"n"}, "<C-right>", "w", NOREMAP_SILENT)
VIM_KEYMAP_SET({"i"}, "<C-left>", "<C-O>b", NOREMAP_SILENT)
VIM_KEYMAP_SET({"i"}, "<C-right>", "<C-O>w", NOREMAP_SILENT)


VIM_KEYMAP_SET({"n"}, "<localleader>p", ":IronRepl<CR>", NOREMAP_SILENT)
VIM_KEYMAP_SET({"i", "n"}, "<C-\\><C-\\>", "<ESC><C-w><C-w>i", NOREMAP_SILENT)
VIM_KEYMAP_SET({"t"}, "<ESC>", "<C-\\><C-n>", NOREMAP_SILENT)
VIM_KEYMAP_SET({"t"}, "<C-\\><C-\\>", "<C-\\><C-n><C-w><C-w>", NOREMAP_SILENT)

-- Return to last edit position when opening files
vim.cmd([[
augroup augroup_all_files_vimscript
  autocmd!
  autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
augroup END
]])
