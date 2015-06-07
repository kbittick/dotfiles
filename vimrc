syntax on
syntax enable
set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

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
let g:syntastic_quiet_messages = {"mode": "passive"}

