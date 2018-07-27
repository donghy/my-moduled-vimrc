" deoplete 
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
set completeopt-=preview

" deoplete-clangx 
call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')
call deoplete#custom#var('clangx', 'default_c_options', '')
call deoplete#custom#var('clangx', 'default_cpp_options', '-std=c++11')

" deoplete-rust 
let b:racer_path = substitute(system('which racer'), '\n', '', '')
let g:deoplete#sources#rust#racer_binary=b:racer_path
let g:deoplete#sources#rust#rust_source_path=$RUST_SRC_PATH
let g:deoplete#sources#rust#disable_keymap=1

" deoplete-python
let b:py3_path = substitute(system('which python3'), '\n', '', '')
"let g:deoplete#sources#jedi#python_path = b:py3_path
let g:deoplete#sources#jedi#python_path = '/usr/local/bin/python3'
