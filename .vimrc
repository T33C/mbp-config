" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on

" turn line numbers on
set number

" highlight matching braces
set showmatch

" intelligent comments
" set comments=sl:/*,mb:\ *,elx:\ */

" The <ESC> key is too far from home so replace it with the key combo jk, you
" just need to be careful that if you ever need to type jk then it escape
" unless you wait for the timeout to elapse on the j. 
inoremap <ESC> <NOP>
inoremap jk <ESC>

" Stop those bad habits by removing the temptations!
nnoremap <UP> <NOP>
nnoremap <DOWN> <NOP>
nnoremap <LEFT> <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>
nnoremap <silent> <ESC>OA <Nop>
nnoremap <silent> <ESC>OB <Nop>
nnoremap <silent> <ESC>OC <Nop>
nnoremap <silent> <ESC>OD <Nop>
inoremap <silent> <ESC>OA <Nop>
inoremap <silent> <ESC>OB <Nop>
inoremap <silent> <ESC>OC <Nop>
inoremap <silent> <ESC>OD <Nop>


" replace the shortcut key \ with the space key which sits nicely under 
" the thumb
let mapleader = "\<Space>"

" quick way to edit and save .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'valloric/YouCompleteMe'

" File Explorer
Plugin 'scrooloose/nerdtree'
nnoremap <F2> :NERDTreeToggle<CR>

" Status Line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Plugin 'kien/ctrip.vim'
" Plugin 'mattn/emmet-vim'
call vundle#end()

