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
inoremap <C-c> <Esc>
inoremap jj <Esc>:call BoxerJoe(0)<Cr>
inoremap JJ <Esc>:call BoxerJoe(1)<Cr>
inoremap jl <Esc>$a

nnoremap <leader>s :LeaderfFunction<Cr>
nnoremap <leader>m :LeaderfMru<Cr>

nnoremap <leader>r :REPLToggle<Cr>

nnoremap <Leader>t :call MyTrigerTT()<Cr>
