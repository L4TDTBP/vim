-- leader key
vim.g.mapleader = " "

local map = vim.keymap

-- basic mappings --
-------------------
-- redo with U
map.set("n", "U", "<C-r>", { noremap = true, desc = "redo" })

-- delete without yanking
map.set("n", "x", '"_x', { noremap = true, desc = "delete char without yank" })
map.set("n", "X", '"_X', { noremap = true, desc = "delete char before without yank" })

-- change without yanking
map.set("n", "cw", '"_cw', { noremap = true, desc = "change word without yanking" })
map.set("n", "ciw", '"_ciw', { noremap = true, desc = "change inner word without yanking" })

-- copy current line into clipboard (without newline)
map.set("n", "<C-c>", "^vg_y", { noremap = true, desc = "copy line content without newline" })

-- paste without yanking replaced text
map.set("v", "p", '"_dP', { noremap = true, desc = "paste without yanking replaced text" })

-- select all
map.set("n", "<C-a>", "gg<S-v>G", { noremap = true, desc = "select all" })
map.set("n", "<D-a>", "ggVG", { noremap = true, desc = "select all" })

-- better escape
map.set("i", "jk", "<Esc>", { noremap = true, desc = "escape insert mode" })

-- go to matching bracket
map.set({ "n", "v" }, "B", "%", { noremap = true, desc = "go to matching bracet" })

-- save current file
map.set("n", "<D-s>", ":w<CR>", { noremap = true, desc = "save file" })
map.set("i", "<D-s>", "<Esc>:w<CR>", { noremap = true, desc = "save file" })

-- navigation --
----------------
-- paragraph navigation
map.set({ "n", "v" }, "J", "}", { noremap = true, desc = "jump to next paragraph" })
map.set({ "n", "v" }, "K", "{", { noremap = true, desc = "jump to previou paragraph" })

-- current line navigation
map.set({ "n", "v" }, "L", "$", { noremap = true, desc = "go to last char of line" })
map.set({ "n", "v" }, "F", "^", { noremap = true, desc = "go to first char of line" })

-- splits --
------------
-- split
map.set("n", "sv", ":vsplit<CR>", { noremap = true, desc = "split vertically" })
map.set("n", "ss", ":split<CR>", { noremap = true, desc = "split horizontally" })

-- move split
map.set("n", "smh", "<C-w>H", { noremap = true, desc = "move split left" })
map.set("n", "smj", "<C-w>J", { noremap = true, desc = "move split down" })
map.set("n", "smk", "<C-w>K", { noremap = true, desc = "move split up" })
map.set("n", "sml", "<C-w>L", { noremap = true, desc = "move split right" })

-- move to other split
map.set("n", "sh", "<C-w>h", { noremap = true, desc = "move to left split" })
map.set("n", "sj", "<C-w>j", { noremap = true, desc = "move to split below" })
map.set("n", "sk", "<C-w>k", { noremap = true, desc = "move to split above" })
map.set("n", "sl", "<C-w>l", { noremap = true, desc = "move to right split" })

-- close active split
map.set("n", "<C-d>", ":q<CR>", { noremap = true, desc = "close split or quit" })

-- close active buffer
map.set("n", "<leader>db", ":bd<CR>", { noremap = true, desc = "delete buffer" })

-- close quickfix (e.g. references split)
map.set("n", "<leader>xq", ":cclose<CR>", { noremap = true, desc = "close quickfix" })
map.set("n", "<leader>jq", ":copen<CR>", { noremap = true, desc = "jump to quickfix" })
