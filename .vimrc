set expandtab     " use spaces for tabs

set tabstop=2     " a tab is two spaces
set shiftwidth=2  " autoindent two spaces

set smartindent
set smarttab

set nocompatible  " disable vi compatibility mode

set hidden
set nowrap        " don't wrap lines
set number        " show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " show matching parentheses
set ignorecase    " when searching
set smartcase     " when searching - ignore case only when searching all lower case
set hlsearch      " highlight search terms
set incsearch     " show matches as you type search terms

set history=1000         " remember more commands and search history
set undolevels=1000      " use many more levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class,*.bk,callgrind.out.*
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup      " don't let vim write backup files
set noswapfile

set encoding=utf-8

set gdefault    " default regexp replace all instances in line

syntax enable
filetype plugin indent on

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Fuzzy filename search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" File contents search
Plug 'mileszs/ack.vim'

" Autocomplete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Git integration
Plug 'tpope/vim-fugitive'

" Color scheme
Plug 'altercation/vim-colors-solarized'

" Languages
Plug 'rust-lang/rust.vim'
Plug 'vim-ruby/vim-ruby'

call plug#end()

" Use ctl-p muscle-memory with fzf
nmap <C-P> :FZF<CR>

" Use rg for grep
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!

" Open grep
nnoremap <Leader>g :Ack!<Space>

" Search for the word under the cursor, globally
nnoremap <Leader>w *<C-O>:AckFromSearch!<CR>

" Replace the word under the cursor, locally
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
