set encoding=utf-8
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set backupcopy=yes

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '"' . $VIMRUNTIME . '\diff"'
"      let eq = '""'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'stanangeloff/php.vim'
Plugin 'nono/jquery.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'roman/golden-ratio'
Plugin 'juneedahamed/vc.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhinz/vim-signify'
Plugin 'chrisbra/unicode.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ternjs/tern_for_vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'sjl/gundo.vim'


" Here's a 🏁 to annoy Fred
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:vc_trunk_url = "svn://osldev/Development/trunk/"
autocmd BufEnter * silent! lcd %:p:h

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
"let g:airline_theme='hybrid'
"let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2
set number
set mouse=a

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers = ['phpcs', 'php']
let g:syntastic_javascript_checkers = ['eslint', 'jshint', 'jsl']

let g:signify_vcs_list = ['git', 'svn']

let g:easytags_cmd = 'c:/ctags'
nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :GundoToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
