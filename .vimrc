" Set compatability to Vim only 
" set nocompatible 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline/vim-airline-themes'

call plug#end()

syntax on 
syntax enable
set mouse=a               " Use mouse
set number                " Show line numbers
set laststatus=2          " Status bar
set tabstop=2 expandtab   " Set tab to space
" status bar config
let g:airline#extensions#tabline#enabled = 1

" File Handling
set nocompatible
set wildmenu              " enable tab auto complete 
set path+=**              " Look into sub directories

" Built in Vim file tree
inoremap <c-f> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-f> <Esc>:Lex<cr>:vertical resize 30<cr>

" #### Moving through buffers
nnoremap bn :bnext<cr>
nnoremap bp :bprevious<cr>

" #### FZF Plugin
nnoremap <c-g> :Files<cr>
nnoremap gb :Buffers<cr>

" Show relative line numbers
"set relativenumber

