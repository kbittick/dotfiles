syntax on
syntax enable
set nocompatible

"execute pathogen#infect()
"execute pathogen#helptags()

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/bundle')

Plug 'kien/ctrlp.vim'
Plug 'fidian/hexmode'
Plug 'klen/python-mode'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/tmuxline.vim'

call plug#end()

colorscheme lucius
LuciusWhite

filetype indent plugin on

filetype indent on
set shiftwidth=4
set expandtab
set hidden
set showcmd
set ignorecase
set smartcase
set nostartofline
set mouse=a
set number
set ts=4
set backspace=indent,eol,start
set incsearch
set runtimepath^=~/.vim/bundle/ctrlp.vim
set completeopt=menu
set laststatus=2
set splitbelow
set splitright
set t_Co=256
set scrolloff=5
set sidescrolloff=5

nmap j gj
nmap k gk
map <F2> :!i3lock <Enter>
map <F5> :CtrlPClearCache <Enter>
map <F6> :Hexmode <Enter>
map <F7> :SyntasticCheck <Enter>

:highlight ExtraWhiteSpace ctermbg=red guibg=red
:match ExtraWhiteSpace /\s\+$/

let g:pymode_doc = 0
let g:pymode_lint = 0
let g:pymode_options_max_line_length = 120
let g:syntastic_quiet_messages = {"level": "warnings"}
let g:syntastic_mode_map = {"mode": "passive"}
let g:ctrlp_working_path_mode = ''

