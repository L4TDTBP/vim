-- BASE CONFIGURATION
-- editor
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = false

-- search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI
vim.opt.showmode = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.visualbell = true
vim.opt.scrolloff = 5

-- system
vim.opt.clipboard:append("unnamed")

---------------------------------------
-- KEYMAPS

-- the leader key
vim.g.mapleader = " "

-- redo
vim.keymap.set('n', 'U', '<C-r>', { noremap = true })
vim.keymap.set('n', 'x', '"_x', { noremap = true })
vim.keymap.set('n', 'X', '"_X', { noremap = true })
vim.keymap.set('n', 'cw', '"_cw', { noremap = true })
vim.keymap.set('n', 'ciw', '"_ciw', { noremap = true })
vim.keymap.set('n', '<C-d>', 'yyp', { noremap = true })
vim.keymap.set('n', 'F', '^', { noremap = true })
vim.keymap.set('n', 'L', '$', { noremap = true })
-- closing/opening bracket pair
vim.keymap.set('n', 'B', '%', { noremap = true })
-- copy current line into clipboard (without newline)
vim.keymap.set('n', '<C-c>', '^vg_y', { noremap = true })
-- select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G', { noremap = true })
-- better escape
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

-- navigation
vim.keymap.set({'n', 'v'}, 'J', '}', { noremap = true })
vim.keymap.set({'n', 'v'}, 'K', '{', { noremap = true })


