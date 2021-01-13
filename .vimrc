" " instructions for Vundle??
" set nocompatible
" filetype off        

""" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 
""" remap leader key to space
let mapleader = " "

""" Use leader key to save files and switch buffers
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bd :bd<CR>

nnoremap <Leader>light :set background=light<CR>
nnoremap <Leader>dark :set background=dark<CR>

" "Plugins

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin indent on

execute pathogen#infect()

highlight Curcor ctermbg=Green
syntax enable

"Set colorscheme
" set term=screen-256color-bce
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
set background=dark

"set autoindent
set autoindent


"ignore line too long errors, let syntastic check on open
let g:syntastic_check_on_open=1
let g:syntastic_python_flake8_args='--ignore=E501,E226,W293'

" enable list of buffers
let g:airline#extensions#tabline#enabled = 1
" 
" show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" 
" hide buffers instead of closing them
set hidden

"set tabwidth
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"remap jj to escape in insert mode
inoremap jj <Esc>
nnoremap JJJJ <Nop>

"Incremental search
set incsearch

"show mode, and adjust the cursor depending on the mode
set showmode

"For pasting from system clipboard
set clipboard=unnamedplus

"unset last search pattern by hitting return
nnoremap <CR> :noh<CR><CR>

"Show commit that introduced line with leader g
map <silent><Leader>g :call setbufvar(winbufnr(popup_atcursor(systemlist("cd " . shellescape(fnamemodify(resolve(expand('%:p')), ":h")) . " && git log --no-merges -n 1 -L " . shellescape(line("v") . "," . line(".") . ":" . resolve(expand("%:p")))), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>

