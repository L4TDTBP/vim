local opt = vim.opt

-- row number
opt.number = true
opt.relativenumber = true

-- tabs and indentation
opt.expandtab = true -- tabs are spaces
opt.tabstop = 2 -- one tab = 2 spaces
opt.shiftwidth = 2 -- indent with 2 spaces
opt.softtabstop = 2 -- backspace removes 2 spaces

-- smart search
opt.ignorecase = true
opt.smartcase = true

-- live preview when replacing
opt.inccommand = "split"

-- scrolloff
opt.scrolloff = 10

-- split-behaviour
opt.splitright = true
opt.splitbelow = true

-- signcolumn always visible
opt.signcolumn = "yes"

-- highlight active row
opt.cursorline = true

-- highlight matching bracket
opt.showmatch = true

-- no row-wrapping
opt.wrap = false

-- show hidden chars
opt.list = true
opt.listchars = { trail = "·", tab = "  " }

-- truecolors for kitty and kanagawa
opt.termguicolors = true

-- share clipboard with os
opt.clipboard = "unnamedplus"

-- no swap files
opt.swapfile = false

-- mouse support
opt.mouse = "a"

-- persist undo history
opt.undofile = true

-- faster update times
opt.updatetime = 250

-- code folding
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldenable = true
opt.foldlevel = 99
