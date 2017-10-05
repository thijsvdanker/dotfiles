" .vimrc file, inspired by Jeffrey Way's: https://gist.github.com/JeffreyWay/6753834

set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set shell=zsh
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-abolish'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/syntastic'
Plugin 'danro/rename.vim'
Plugin 'tomasr/molokai'
Plugin 'posva/vim-vue'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set t_Co=256
set encoding=utf-8

colorscheme molokai
set guifont=fira\ mono\ for\ powerline:h15
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=6

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=2                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a

let g:netrw_liststyle=3

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

let mapleader = ','
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal model
imap jj <esc>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j

nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

highlight Search cterm=underline

" Powerline (Fancy thingy at bottom stuff)
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the
" statusline)

" Familiar commands for file/symbol browsing
map <D-p> :CtrlP<cr>

" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set wildignore+=*/node_modules/**
set wildignore+=*/bower_components/**
set wildignore+=*/tmp/**


" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Settings for syntastic syntax checker
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['jscs']
let g:syntastic_html_tidy_quiet_messages = { "level" : "warnings" }
" Use the mustache abbreviations
let g:mustache_abbreviations = 1

nmap <LEADER>ve :e ~/.vimrc<CR> "Edit the vimrc file

" Git commit styleguide
autocmd Filetype gitcommit setlocal spell textwidth=72
