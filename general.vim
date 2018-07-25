:set nu
:set shiftwidth=4
:set softtabstop=4
:set autoindent
syntax on
:let mapleader="\<Space>"
set noshowmode
" if all windows left are not edit window, then quit from all windows left.
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
