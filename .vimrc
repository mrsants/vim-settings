
syntax on
set number
set nocompatible
set encoding=utf-8

filetype plugin indent on

call plug#begin('~/.vim/plugged')

"{{ Configuring NerdTree
Plug 'scrooloose/nerdtree'
  " ---> to hide unwanted files <---
let nerdtreeignore = [ 'node_modules/' ]
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

"{{ COnfiguratiom autocomplete 


    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-eslint', 'coc-prettier']
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

  
}}"

call plug#end()

colorscheme dracula

