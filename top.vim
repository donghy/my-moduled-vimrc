let b:prefix = resolve(expand('<sfile>:p:h')) 

function TopGetOS()
    if has('win64') || has('win32') || has('win16')
        return 'Windows'
    else
        return substitute(system('uname'), '\n', '', '')
    endif
endfunction

function TopLoadSubScript(path)
    let p = b:prefix . '/' . a:path
    exec 'source ' . p
endfunction

if TopGetOS() == 'Darwin'
    call TopLoadSubScript('maconly.vim')
endif

call TopLoadSubScript('env.vim')
call TopLoadSubScript('general.vim')
call TopLoadSubScript('tab-config.vim')
call TopLoadSubScript('mapping.vim')
call TopLoadSubScript('joe.vim')
call TopLoadSubScript('fcitx.vim')

" Plug Management
call plug#begin("~/.vim/plugged")
Plug 'vim-airline/vim-airline'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'lfv89/vim-interestingwords'
Plug 'Shougo/echodoc.vim'
Plug 'Yggdroot/indentLine'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-go', {'do': 'make'}
Plug 'sebastianmarkow/deoplete-rust'
Plug 'Shougo/deoplete-clangx'
Plug 'zchee/deoplete-jedi'
Plug 'w0rp/ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'tpope/vim-surround'
Plug 'kassio/neoterm'
call plug#end()

" Plug Config
call TopLoadSubScript('brackets.vim')
call TopLoadSubScript('tagbar.vim')
call TopLoadSubScript('nerdtree.vim')
call TopLoadSubScript('echodoc.vim')
call TopLoadSubScript('deoplete.vim')
call TopLoadSubScript('ale.vim')
call TopLoadSubScript('gutentags.vim')
