syntax on

" Editor
set number
set cursorline
set backspace=indent,eol,start
set visualbell

" Tab and indentation
set tabstop=2
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=2

set wildmenu
set laststatus=2

" Backup 
set backup
set noswapfile
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

" Leader
let mapleader = ','

" Cursor
let &t_SI = "\<Esc>]50;CursorShape=2\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Search
set incsearch
set hlsearch
nmap <leader><space> :nohl<cr>

" Clipboard
let &clipboard = has('unnamedplus') ? 'unnamedplus' : 'unnamed'

" Some shortcuts
nmap <leader>w :w<cr>
nmap <leader>s :wq<cr>
nmap <leader>q :q!<cr>
nmap <leader>e :Explore<cr>

" Colorscheme
colorscheme Tomorrow-Night 

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'w0rp/ale'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ngmy/vim-rubocop'
call vundle#end()

filetype plugin indent on

" Define which linters to use 
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'css': ['csslint', 'prettier', 'stylelint'],
\   'html': ['HTMLHint']
\}
let g:ale_linters_explicit = 1

" GitGutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '∙'

" fzf
nmap <leader>f :Files<cr>

" ALE
nmap <leader>j :ALEFix eslint<cr>
let g:ale_sign_error = '•'
let g:ale_sing_warning = '.'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
