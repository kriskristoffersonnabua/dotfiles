local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- set leader key
vim.g.mapleader = ';'

-- disable arrow keys
map('n', '<Up>', '<NOP>', opts)
map('n', '<Down>', '<NOP>', opts)
map('n', '<Left>', '<NOP>', opts)
map('n', '<Right>', '<NOP>', opts)

-- vim-fugitive
map('n', '<leader>gd', ':Git diff<CR>', opts)
map('n', '<leader>gs', ':Git<CR>', opts)
map('n', '<leader>gi', ':Gwrite<CR>', opts)
map('n', '<leader>gc', ':Git commit<CR>', opts)
map('n', '<leader>gp', ':Git push<CR>', opts)

-- nvim-tree shortcuts
map('n', '<leader>1', ':NvimTreeToggle<CR>', opts)

-- default shortcuts
map('i', '<leader>c', '<ESC>', opts)
map('v', '<leader>c', '<ESC>', opts)
map('n', '<leader>w', ':wa<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>f', ':split<CR>:Ex<CR>', opts)
map('n', '<leader>F', ':vsplit<CR>:Ex<CR>', opts)
map('n', '<leader>j', '<C-w>', opts)
map('n', '<leader>t', ':tabnew<CR>', opts)

-- telescope shortcuts
map('n', '<C-p>', '<cmd>Telescop find_files<cr>', opts)
