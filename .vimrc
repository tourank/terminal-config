set term=xterm-256color
set nocompatible              " be iMproved, requiredG
filetype off                  " required
let mapleader = "  "
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-syntastic/syntastic' 
Plugin 'preservim/nerdtree'
Plugin 'rust-lang/rust.vim'
" All of your Plugins must be added before the following line
call vundle#end()
syntax on
filetype plugin indent on
set shiftwidth=4
colorscheme fahrenheit 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set relativenumber
inoremap jk <Esc>
nnoremap <C-f> :NERDTreeToggle<CR>
inoremap { {<CR>}<Esc>ko
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>

if has("autocmd")
  augroup templates_
    autocmd BufNewFile *.cpp 0r ~/temp.cpp
	autocmd BufNewFile *.c 0r ~/temp.c
  augroup END
endif
