syntax on

" Editor
set number
set cursorline
set backspace=indent,eol,start
set visualbell

" Tab and indentation
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set shiftwidth=2

" Folding
set foldmethod=indent   
set foldnestmax=1
set nofoldenable

set wildmenu

" Status line
set laststatus=2
set statusline=
set statusline+=%1*\ %l/%L
set statusline+=%2*\ %F
set statusline+=\ %m

" Backup 
set backup
set noswapfile
set directory=~/.vim/temp
set backupdir=~/.vim/temp
set undodir=~/.vim/temp

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
nmap <leader>p "0p
nmap <leader>P "0P

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
Plugin 'jiangmiao/auto-pairs'
call vundle#end()

filetype plugin indent on

" Define which linters to use 
let g:ale_linters = {
\  'javascript': ['eslint', 'prettier'],
\  'json': ['jsonlint', 'prettier'],
\  'css': ['csslint', 'prettier', 'stylelint'],
\  'html': ['HTMLHint']
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
let g:ale_sign_error = '>'
let g:ale_sign_warning = '-'
highlight link ALEError Error 
highlight link ALEWarning Warning
highlight clear ALEErrorSign
highlight clear ALEWarningSign
