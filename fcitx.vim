let b:insert_lang = ''
function! Fcitx2en()
    let input_status = system('fcitx-remote')
    if input_status == 2
        let b:insert_lang = system('fcitx-remote -n')
	call system('fcitx-remote -s ' . g:en_inp)
    endif
endfunction
function! Fcitx2zh()
    if b:insert_lang != ''
	call system('fcitx-remote -s '. b:insert_lang)
    endif
endfunction
" Autocmds:
autocmd InsertLeave * if count(['markdown'], &filetype) | call Fcitx2en() | endif
autocmd InsertEnter * if count(['markdown'], &filetype) | call Fcitx2zh() | endif
