" Editor
syntax on
set number
set cursorline
set backspace=start
set wildmenu
set showcmd
set visualbell
colorscheme Manel

" Tab and indentation
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

" Set different position for window splits
set splitbelow
set splitright

" Disable recognition of keys sending an escape sequence when in insert mode
set noesckeys

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

" Disable cursor keys
nmap <Up> <nop>
nmap <Down> <nop>
nmap <Left> <nop>
nmap <Right> <nop>
imap <Up> <nop>
imap <Down> <nop>
imap <Left> <nop>
imap <Right> <nop>

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" Set CSV delimiter
let g:polyglot_disabled = ['csv']

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
call vundle#end()

filetype plugin indent on

" ALE
let g:ale_linters_explicit = 1
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

" Just some VimScript tests
function! s:ASCIIFor()
  echo 'Enter the character that you need its ASCII code'
  let result = getchar()
  echo 'The ASCII code is ' . result
endfunction

command! ASCIIFor call s:ASCIIFor()

function! g:CreateRubyMethod()
  execute "normal! yawidef\<space>\<esc>oend\<esc>O"
endfunction

nmap <leader>m :call g:CreateRubyMethod()<cr>
