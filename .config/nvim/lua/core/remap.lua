-- Leader Key
vim.g.mapleader= ' '
vim.g.maplocalleader= ' '

-- Basic Config
vim.opt.backspace = '2'
vim.opt.mouse = "a"
vim.opt.autoread = true
--vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.showtabline=2

-- "      File Handling     "
--vim.opt.nocompatible 
vim.opt.wildmenu = true              -- enable tab auto complete 
--vim.opt.path:append '**'      -- Look into sub directories

-- Use space instead of tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.shiftround = true

-- Clear Search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Other Lex
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- " Built in Vim file tree "
vim.keymap.set('n', '<leader>l', ':Lex<cr>:vertical resize 30<cr>')
vim.keymap.set('i', '<leader>l', ':Lex<cr>:vertical resize 30<cr>')

-- " Moving through buffers "
vim.keymap.set('n', '<TAB>', ':bnext<CR>')
vim.keymap.set('n', '<S-TAB>', ':bprevious<CR>')

-- Map F8 to copy the current line to the clipboard
vim.keymap.set('n', '<F8>', ':.!xclip -selection clipboard<CR>')

-- Map Shift+F8 to paste text from the clipboard
vim.keymap.set('n', '<S-F8>', ':.!xclip -selection clipboard<CR>')
