" Editor
syntax on
set number
set cursorline
set backspace=indent,eol,start
set wildmenu
set showcmd
set visualbell
set redrawtime=10000
colorscheme Manel

" Show hidden characters
set list
set listchars=eol:¬

" Language
language en_GB.UTF-8

" File encoding
set encoding=utf-8
set fileencoding=utf-8

" Do not add a new line at the end of files
set nofixendofline

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

" Show number of ocurrences when searching
set shm-=S

" Folding
set foldmethod=indent   
set foldnestmax=1
set nofoldenable

" Status line
set laststatus=2
set statusline=
set statusline+=%1*\ %l/%L   " line of lines
set statusline+=\ [%02c]     " column number
set statusline+=%2*\ %f      " file path and name
set statusline+=\ %m         " modified flag

" Backup 
set backup
set noswapfile
set backupdir=~/.vim/temp
set undodir=~/.vim/temp

" Search
set hlsearch
set incsearch

" Use the system clipboard
set clipboard=unnamed

" Leader
let mapleader = ','

" Some shortcuts
nnoremap <leader>f :Files<cr>
nnoremap <leader>j :ALEFix<cr>
nnoremap <leader>l <c-w>w
nnoremap <leader><space> :nohl<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>s :wq<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>e :Explore<cr>:e<cr>
nnoremap <leader>h q:
nnoremap <leader>p "0p
nnoremap <leader>P "0P
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>cv :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>' bi'<esc>ea'<esc>l
nnoremap <leader>" bi"<esc>ea"<esc>l
nnoremap <leader>a :Ag 
nnoremap <leader>c :!ctags -R --exclude=client/node_modules .<cr>
nnoremap <leader>x <c-]>
nnoremap <leader>z <c-o>
nnoremap <Right> <c-w>>
nnoremap <Left> <c-w><
nnoremap <Up> <c-w>+
nnoremap <Down> <c-w>-

" Enable completion where available, must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" Netrw
" hide top banner
let g:netrw_banner = 0
" hiding list
let g:netrw_list_hide= '.git/,node_modules,tags'

" Set CSV delimiter
let g:polyglot_disabled = ['csv']

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()
filetype plugin indent on

" ALE
let g:ale_linters_explicit = 1
let g:ale_linters = {
\  'javascript': ['eslint', 'prettier'],
\  'json': ['jsonlint', 'prettier'],
\  'go': ['golint'],
\  'css': ['csslint', 'prettier', 'stylelint'],
\  'html': ['htmlhint'],
\  'ruby': ['rubocop'],
\  'make': ['checkmake'],
\  'haml': ['haml-lint'],
\  'xml': ['xmllint'],
\  'haskell': ['brittany']
\}
let g:ale_fixers = {
\  'javascript': ['eslint', 'prettier'],
\  'json': ['fixjson'],
\  'ruby': ['rubocop'],
\  'html': ['html-beautify'],
\  'go': ['gofmt'],
\  'xml': ['xmllint'],
\  'haskell': ['brittany']
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

" Detect syntax name for item under the cursor
function! g:SyntaxItem()
  echo synIDattr(synID(line('.'), col('.'), 1), 'name')
endfunction
nnoremap <leader>? :call g:SyntaxItem()<cr>

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
nnoremap <leader>m :call g:CreateRubyMethod()<cr>
