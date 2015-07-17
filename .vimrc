" instructions for Vundle??
set nocompatible
filetype off        

""" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'sophacles/vim-processing'   " Plugin for Processing language

Plugin 'jcf/vim-latex'              " Plugin vor latex
function SetXeTex()                 " Set compiler to xelatex
    let g:Tex_CompileRule_pdf = 'xelatex -aux-directory=F:/Vim/my_latex_doc/temp --synctex=-1 -src-specials -interaction=nonstopmode $*'
endfunction
map <Leader>lx :<C-U>call SetXeTex()<CR>
let g:Tex_multipleCompileFormats='pdf,bib,pdf'

Plugin 'bling/vim-airline'          " vim-airline
let g:Tex_DefaultTargetFormat='pdf'

call vundle#end()
filetype plugin indent on

execute pathogen#infect()

highlight Curcor ctermbg=Green
syntax enable

"Set colorscheme
set term=screen-256color-bce
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

"set autoindent
set autoindent


"ignore line too long errors, let syntastic check on open
let g:syntastic_check_on_open=1
let g:syntastic_python_flake8_args='--ignore=E501,E226,W293'

" enable list of buffers
let g:airline#extensions#tabline#enabled = 1

" show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

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

