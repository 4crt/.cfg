function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- clear matches
nmap('<C-b>', '<cmd>nohlsearch<cr> | <cmd>call clearmatches()<cr>')

-- don't jump when using *
nmap('*', '*<c-o>')

-- keep search matches in the middle of the window
nmap('n', 'nzzzv')
nmap('N', 'Nzzzv')
-- same when jumping around
nmap('g;', 'g;zz')
nmap('g,', 'g,zz')

-- project view
nmap('<leader>pv', '<cmd>Ex<cr>')

nmap('<leader>u', '<cmd>UndotreeShow<cr>')

-- open Quickfix window for the last search
nmap("<leader>?", "<cmd>execute 'vimgrep /'.@/.'/g %'<cr>:copen<cr>")

-- begining & end of line in Normal mode
nmap('H', '^')
nmap('L', 'g_')

-- more natural movement with line wrap
nmap('j', 'gj')
nmap('k', 'gk')
vmap('j', 'gj')
vmap('k', 'gk')

-- easy buffer navigation
nmap('<M-h>', '<c-w>h')
nmap('<M-j>', '<c-w>j')
nmap('<M-k>', '<c-w>k')
nmap('<M-l>', '<c-w>l')
-- same for terminal
tmap('<M-h>', '<c-\\><c-n><c-w>h')
tmap('<M-j>', '<c-\\><c-n><c-w>j')
tmap('<M-k>', '<c-\\><c-n><c-w>k')
tmap('<M-l>', '<c-\\><c-n><c-w>l')

-- reselect visual block after indent/outdent
vmap('<', '<gv')
vmap('>', '>gv')

-- home and end line in command mode
cmap('<C-a>', '<Home>')
cmap('<C-e>', '<End>')

tmap('<Esc>', '<c-\\><c-n>')
tmap('<C-v><Esc>', '<esc>')
nmap('<M-t>', '<cmd>split | terminal<cr>')
-- autoswitch to terminal buffer (when just one is open)
nmap('<M-0>', '<cmd>b term://<cr>')

-- easy window split
nmap('vv', '<c-w>v')
nmap('ss', '<c-w>s')
vim.o.splitbelow = true -- when splitting horizontally, move coursor to lower pane
vim.o.splitright = true -- when splitting vertically, mnove coursor to right pane

-- PLUGINS
-- Telescope
nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<leader>fh", "<cmd>Telescope help_tags<cr>")

-- LSP
nmap('K', '<cmd>Lspsaga hover_doc<cr>')
imap('<C-k>', '<cmd>Lspsaga hover_doc<cr>')
nmap('gh', '<cmd>Lspsaga lsp_finder<cr>')
nmap('<C-e>', '<cmd>Lspsaga show_line_diagnostics<cr>')
