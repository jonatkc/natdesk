" Set compatability to Vim only 
" set nocompatible 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'

call plug#end()

syntax on 
syntax enable
set mouse=a               " Use mouse
set number                " Show line numbers
set laststatus=2          " Status bar
set tabstop=2 expandtab   " Set tab to space

" File Handling
set nocompatible
set wildmenu              " enable tab auto complete 
set path+=**              " Look into sub directories

" Built in Vim file tree
inoremap <c-f> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-f> <Esc>:Lex<cr>:vertical resize 30<cr>

" #### Moving through buffers
nnoremap n :bnext<cr>
nnoremap bp :bp<cr>

" #### FZF Plugin
nnoremap <c-g> :Files<cr>

" Show relative line numbers
"set relativenumber

