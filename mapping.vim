let g:nerdtree_tagbar_is_close=1
function MyTrigerTT()
    exec 'NERDTreeToggle'
    exec 'TagbarToggle'
    if g:nerdtree_tagbar_is_close
	let g:nerdtree_tagbar_is_close = 0
	wincmd h
    else
	let g:nerdtree_tagbar_is_close = 1
    endif
endfunction

inoremap jk <Esc>
inoremap jj <Esc>o
inoremap jl <Esc>$a

nnoremap <leader>s :LeaderfFunction<Cr>
nnoremap <leader>m :LeaderfMru<Cr>

nnoremap <leader>r :REPLToggle<Cr>

nnoremap <Leader>t :call MyTrigerTT()<Cr>
