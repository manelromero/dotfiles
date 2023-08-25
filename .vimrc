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

" Performance
set updatetime=300
 
" Show hidden characters
set list
set listchars=eol:¬
 
" Language and encoding
language en_GB.UTF-8
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

" Status line
set laststatus=2
set statusline=
set statusline+=%1*\ %l/%L       " line of lines
set statusline+=\ [%02c]         " column number
set statusline+=%2*\ %f          " file path and name
set statusline+=\ %m             " modified flag

" Backup 
set nobackup
set noswapfile

" Search
set hlsearch
set incsearch

" Use the system clipboard
set clipboard=unnamed

" Leader
let mapleader = ','
 
" Shortcuts
nnoremap <leader>f :Files<cr>
nnoremap <leader>j :ALEFix<cr>
nnoremap <leader>l <c-w>w
nnoremap <leader><space> :nohl<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>s :wq<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>e :e.<cr>
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
nnoremap <Right> <c-w><
nnoremap <Left> <c-w>>
nnoremap <Up> <c-w>+
nnoremap <Down> <c-w>-
nnoremap <leader><Right> <c-w>v
nnoremap <leader><Down> <c-w>s
 
" Netrw
" hide top banner
let g:netrw_banner = 0
" hiding list
let g:netrw_list_hide= '.git/,node_modules,tags'
 
" Set CSV delimiter because of Polyglot plugin
let g:polyglot_disabled = ['csv']

" Detect filetype
filetype on

" Indent depending on filetype
filetype plugin indent on

" ALE
let g:ale_lint_on_enter = 0
let g:ale_completion_autoimport = 0
let g:ale_linters_explicit = 1
let g:ale_linters = {
  \ 'javascript': ['eslint', 'prettier'],
  \ 'typescript': ['eslint', 'prettier'],
  \ 'typescriptreact': ['eslint', 'prettier'],
  \ 'json': ['jsonlint', 'prettier'],
  \ 'css': ['csslint', 'prettier', 'stylelint'],
  \ 'html': ['htmlhint'],
  \ 'ruby': ['rubocop'],
  \ 'make': ['checkmake'],
  \ 'haml': ['haml-lint'],
  \ 'xml': ['xmllint']
\ }
let g:ale_fixers = {
  \ 'javascript': ['eslint', 'prettier'],
  \ 'typescript': ['eslint', 'prettier'],
  \ 'typescriptreact': ['eslint', 'prettier'],
  \ 'json': ['fixjson'],
  \ 'ruby': ['rubocop'],
  \ 'html': ['html-beautify'],
  \ 'xml': ['xmllint']
\ }

" Detect syntax name for item under the cursor
function! g:SyntaxItem()
  echo synIDattr(synID(line('.'), col('.'), 1), 'name')
endfunction
nnoremap <leader>? :call g:SyntaxItem()<cr>
