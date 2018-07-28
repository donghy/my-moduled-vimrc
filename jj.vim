let g:JJ_language_config_for_c_family = {
	\   'for': ' {',
	\   'if': ' {',
	\   '#': '',
	\   ' ': ';'
\}

let g:JJ_language_config = {
	\ 'cpp': g:JJ_language_config_for_c_family,
	\ 'c': g:JJ_language_config_for_c_family
\}


function! TriggerJJ()
    s/\v\s*$//			         
    " echo &filetype
    let lft = &filetype
    let append_char = ''
    if has_key(g:JJ_language_config, lft)
	" echo g:JJ_language_config[lft]
	let lcfg = g:JJ_language_config[lft]
	let line_cnt = substitute(getline('.'), '\v^\s*', '', '')
	" echo line_cnt
	let append_char = lcfg[' ']
	for [ptnx, c] in items(lcfg)
	    " echo ptnx
	    if stridx(line_cnt, ptnx) == 0
		let append_char = c
		break
	    endif
	endfor 
    endif
    :call feedkeys("$a" . append_char. "\<Cr>", 't')
endfunction
