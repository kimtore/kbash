" global settings
source /etc/vim/vimrc

" kbash vim
syntax on
set ttymouse=xterm
set visualbell
set mouse=a
set bs=2
set ruler
set background=dark
set smartindent
set smartcase
set showmode
set modeline
set nohlsearch
set noincsearch
set nu

" python indenting
autocmd BufRead *.py set ts=4 sw=4 sts=4 sta et smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" trim whitespace from saved files
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" python tabs
" modeline: /* vim: set ts=4 sw=4 sts=4 sta et: */
" http://www.vex.net/~x/python_and_vim.html
set tabstop=4           " use 4 spaces to represent tab
set shiftwidth=4        " number of spaces to use for auto indent
set softtabstop=4
set expandtab
set smarttab

" no word wrap
set formatoptions=l
set lbr

" nice dvorak'y window switching
map <C-T> <C-W>j<C-W>_
map <C-C> <C-W>k<C-W>_
map <C-N> <Esc>:new<CR><C-W>_
map <C-J> <Esc>:split<CR><C-W>_
map <C-K> <Esc>:quit<CR><C-W>_
set wmh=0 

" switch between header and cpp file
map <C-h> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
