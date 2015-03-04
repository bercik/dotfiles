execute pathogen#infect()

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
" Disable NeoComplCache for certain filetypes
if has('autocmd')
   autocmd FileType java nested NeoComplCacheLock
endif

" javacomplete only for .java files
if has("autocmd")
   autocmd Filetype java setlocal omnifunc=javacomplete#Complete
   autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
endif

" Delimitmate plugin
let delimitMate_expand_cr = 1

"NERDtree
nmap <leader>d :NERDTreeToggle<CR>

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

syntax on
filetype on
filetype plugin indent on

"cpp filetypes
au BufNewFile,BufRead *.tpp set filetype=cpp
au BufNewFile,BufRead *.h set filetype=cpp
au BufNewFile,BufRead *.hpp set filetype=cpp

set smartindent
set ruler
set hlsearch
set number

set t_Co=256
colorscheme wombat256mod

set mouse=a

set backspace=2

set expandtab
set tabstop=3
set shiftwidth=3

filetype plugin on

nnoremap <F3> :noh<CR>
nnoremap <F8> :<C-U> : tabp <CR>
nnoremap <F9> :<C-U> : tabn <CR>
inoremap jk <Esc>

" for command mode
nmap <S-Tab> <<
" for insert mode
imap <S-Tab> <C-o><<
