HOME = os.getenv("HOME")
require('ayu').colorscheme()

vim.g.mapleader = ' '

vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true

vim.o.encoding = "utf-8"
vim.o.history = 1000

vim.o.showmatch  = true
vim.o.scrolloff = 3
vim.o.sidescrolloff = 3
vim.o.wrap = false
vim.o.showbreak= '↪'

vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.swapfile = false

vim.cmd([[
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
]])
