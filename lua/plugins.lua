vim.cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq{'savq/paq-nvim', opt=true}

-- Auto-complete (future alternative is completion.nvim?)
paq{'nvim-lua/completion-nvim'}
-- Tree-sitter
paq{'nvim-treesitter/nvim-treesitter'}
-- Language server configuration
paq{'neovim/nvim-lspconfig'}
-- Language server status info
paq{'nvim-lua/lsp-status.nvim'}
-- Devicons (used e.g. by telescope)
paq{'kyazdani42/nvim-web-devicons'}
-- Fuzzy finding/Search
paq{'nvim-lua/popup.nvim'}
paq{'nvim-lua/plenary.nvim'}
paq{'nvim-telescope/telescope.nvim'}
-- Theme
paq{'gruvbox-community/gruvbox'}
-- Git integration
paq{'tpope/vim-fugitive'}
-- Vim dispatch
paq{'tpope/vim-dispatch'}

-- Configure the Tree-sitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = 'all', highlight = {enable = true}
}

-- Use completion-nvim in every buffer

