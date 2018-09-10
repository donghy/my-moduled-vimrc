let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
	    \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
	    \ 'cs,lua,javascript': ['re!\w{2}'],
	    \ }

let g:ycm_global_ycm_extra_conf = resolve(expand('<sfile>:p:h')) . '/.ycm_extra_conf.py'
