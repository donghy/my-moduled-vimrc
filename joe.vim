let g:Joe_language_config = {
	    \ 'python': ['', ":\<cr>"],
	    \ 'cpp': [';', " {\<cr>"],
	    \ 'c': [';', " {\<cr>"]
	    \}


function! BoxerJoe(idx)
    s/\v\s*$//			         
    " echo &filetype
    let lft = &filetype
    let append_char = ''
    if has_key(g:Joe_language_config, lft)
	let lcfg = g:Joe_language_config[lft]
	let append_char = lcfg[a:idx]
    endif
    :call feedkeys("$a" . append_char, 't')
endfunction
