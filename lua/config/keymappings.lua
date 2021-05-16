local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

local options = { noremap = true }
-- Keymaps for Telescope fuzzy finding
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)

-- Keymaps for completion-nvim
map('i', '<expr>', 'pumvisible() ? "<C-n>" : "<Tab>"', options)
map('i', '<expr>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', options)
