"cpp, hpp, h, tpp filetype specific settings
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
   \'<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"make shortcuts
nnoremap <F4> :<C-U> :wa <bar> !make<CR>
nnoremap <F5> :<C-U> :wa <bar> !make test<CR>
nnoremap <F6> :<C-U> : !make clean<CR>

function! s:insert_gates()
let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
execute "normal! i#ifndef " . gatename
execute "normal! o#define " . gatename . " "
execute "normal! Go#endif /* " . gatename . " */"
normal! kk
endfunction
autocmd BufNewFile *.{H,h,hpp,tpp} call <SID>insert_gates()
