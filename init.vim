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

" Show number of ocurrences when searching
set shm-=S

" Folding
set foldmethod=indent   
" set foldnestmax=1
set nofoldenable

" Status line
set laststatus=2
set statusline=
set statusline+=%1*\ %l/%L          " line of lines
set statusline+=\ [%02c]            " column number
set statusline+=\ %{coc#status()}   " COC status
set statusline+=%2*\ %f             " file path and name
set statusline+=\ %m                " modified flag

" Backup 
set backup
set noswapfile
set backupdir=~/.local/share/nvim/backup
set undodir=~/.local/share/nvim/backup

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

" Detect filetype
filetype on

" vim-plug
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'haishanh/night-owl.vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" Indent depending on filetype
filetype plugin indent on

" ALE
let g:ale_linters_explicit = 1
let g:ale_linters = {
\  'javascript': ['eslint', 'prettier'],
\  'typescript': ['eslint', 'prettier'],
\  'typescriptreact': ['eslint', 'prettier'],
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
\  'typescript': ['eslint', 'prettier'],
\  'typescriptreact': ['eslint', 'prettier'],
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

augroup ReactFiletypes
  autocmd!
  autocmd BufRead,BufNewFile *.jsx set filetype=javascriptreact
  autocmd BufRead,BufNewFile *.tsx set filetype=typescriptreact
augroup END

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
  set termguicolors
endif

" enable the theme
" syntax enable
" colorscheme night-owl

" To enable the lightline theme
" let g:lightline = { 'colorscheme': 'nightowl' }
