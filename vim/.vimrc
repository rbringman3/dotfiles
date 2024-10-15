let g:mapleader = ' '
let g:maplocalleader = ' '

set number
set guicursor="n-v-c-sm:block,ci-ve:ver25,r-cr-o:hor20,i:block-blinkwait450-blinkoff400-blinkon250-Cursor/lCursor"
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4

set backspace=2
set showcmd
set laststatus=2
set autowrite
set cursorline
set autoread

set tabstop=4
set shiftwidth=4
set softtabstop=4

let g:clipboard = "unnamedplus"

nnoremap <c-k> :wincmd k<cr>
nnoremap <c-j> :wincmd j<cr>
nnoremap <c-h> :wincmd h<cr>
nnoremap <c-l> :wincmd l<cr>

nnoremap <leader>h :nohlsearch<cr>

highlight CursorLine term=bold cterm=none ctermbg=lightgray
