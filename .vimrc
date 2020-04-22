
syntax on
set number
set nocompatible
set encoding=utf-8
filetype plugin indent on
call plug#begin('~/.vim/plugged')

"{{ Configuring NerdTree
Plug 'scrooloose/nerdtree'
  " ---> to hide unwanted files <---
  "let nerdtreeignore = [ 'node_modules/' ]
" ---> show hidden files <---
  let NERDTreeShowHidden=1
" ---> autostart nerd-tree when you start vim <---
  autocmd vimenter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:stdn_in") | NERDTree | endif
" ---> toggling nerd-tree using Ctrl-N <---
  map <C-n> :NERDTreeToggle<CR>
"}}

"{{ Configuration them dark dracula
   Plug 'dracula/vim', { 'as': 'dracula' }
"}}"
call plug#end()

colorscheme dracula

