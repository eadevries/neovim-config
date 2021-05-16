local o = vim.o
local wo = vim.wo
local bo = vim.bo

local USER = vim.fn.expand('$USER')

o.errorbells = false
o.hlsearch = false
o.hidden = true
o.undodir = "/home/" .. USER .. "/.local/share/nvim/undo"
o.backup = false
o.incsearch = true
o.scrolloff = 8
o.secure = false
o.termguicolors = true
o.completeopt='menuone,noinsert,noselect'

bo.tabstop = 4
bo.softtabstop = 4
bo.shiftwidth = 4
bo.expandtab = true
bo.smartindent = true
bo.undofile = true

wo.relativenumber = true
wo.nu = true
wo.colorcolumn = '80'
wo.signcolumn = 'yes'


