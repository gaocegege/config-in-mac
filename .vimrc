execute pathogen#infect()
syntax enable
"set background=blackbeauty
colorscheme xoria256
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set nu
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif
filetype on
