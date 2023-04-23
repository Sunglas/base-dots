local g = vim.g
local o = vim.o

cmd('syntax on')
vim.api.nvim_command('filetype plugin indent on')

-- editor settings
o.ignorecase    = true
o.smartcase     = true
o.ruler         = true
o.ttyfast       = true
o.confirm       = true
o.shiftwidth    = 4
o.softtabstop   = 4
o.expandtab     = true
o.cindent       = true
o.wrap          = true
o.textwidth     = 80
o.list          = true
o.viewoptions   = 'cursor,folds,slash,unix'
o.jumpoptions   = 'view'

-- line numbers
o.relativenumber= true
o.number        = true
o.numberwidth   = 6
o.signcolumn    = 'yes:2'
o.cursorline    = true


-- set same clipboard as host OS
o.clipboard     = 'unnamedplus'


