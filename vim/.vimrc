let g:mapleader = ' '
let g:maplocalleader = ' '

set cursorline
highlight CursorLine term=bold cterm=underline

set guicursor="n-v-c-sm:block,ci-ve:ver25,r-cr-o:hor20,i:block-blinkwait450-blinkoff400-blinkon250-Cursor/lCursor"

set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=2
set scrolloff=4

set autowrite
set autoread
set number
set ruler
set showcmd
syntax on

let g:clipboard = "unnamedplus"

" easier move between panes
nnoremap <c-k> :wincmd k<cr>
nnoremap <c-j> :wincmd j<cr>
nnoremap <c-h> :wincmd h<cr>
nnoremap <c-l> :wincmd l<cr>

" clear highlighting
nnoremap <leader>h :nohlsearch<cr>

