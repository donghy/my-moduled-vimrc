let g:Joe_language_config = {
	\ 'python': ['', ':'],
	\ 'cpp': [';', ' {'],
	\ 'c': [';', ' {']
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
    :call feedkeys("$a" . append_char. "\<Cr>", 't')
endfunction
