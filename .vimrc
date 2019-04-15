" Editor
syntax on
set number
set cursorline
set backspace=indent,eol,start
set visualbell
set wildmenu
set showcmd

" Use old regexp engine or editing Ruby files will be slow
set regexpengine=1

" Tab and indentation
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent
set tabstop=2

" Folding
set foldmethod=indent   
set foldnestmax=1
set nofoldenable

" Status line
set laststatus=2
set statusline=
set statusline+=%1*\ %l/%L
set statusline+=\ [%02c]
set statusline+=%2*\ %F
set statusline+=\ %m

" Backup 
set backup
set noswapfile
set directory=~/.vim/temp
set backupdir=~/.vim/temp
set undodir=~/.vim/temp

" Search
set incsearch
set hlsearch

" Use the system clipboard
set clipboard=unnamed

" Leader
let mapleader = ','

" Some shortcuts
nmap <leader>f :Files<cr>
nmap <leader>j :ALEFix<cr>
nmap <leader>l <C-W>w
nmap <leader><space> :nohl<cr>
nmap <leader>w :w<cr>
nmap <leader>s :wq<cr>
nmap <leader>q :q!<cr>
nmap <leader>e :Explore<cr>:e<cr>
nmap <leader>p "0p
nmap <leader>P "0P
nmap <leader>b :Buffers<cr>

" Disable some keys
imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>

" Colorscheme
colorscheme Manel 

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
call vundle#end()

filetype plugin indent on

" ALE
let g:ale_linters = {
\  'javascript': ['eslint', 'prettier'],
\  'json': ['jsonlint', 'prettier'],
\  'css': ['csslint', 'prettier', 'stylelint'],
\  'html': ['HTMLHint'],
\  'ruby': ['rubocop'],
\  'make': ['checkmake'],
\  'haml': ['haml-lint']
\}
let g:ale_fixers = {
\  'javascript': ['eslint'],
\  'json': ['fixjson'],
\  'ruby': ['rubocop']
\}
let g:ale_linters_explicit = 1
let g:ale_sign_error = '>'
let g:ale_sign_warning = '-'
highlight link ALEError Error 
highlight link ALEWarning Warning
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" GitGutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '*'
