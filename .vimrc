set expandtab     " use spaces for tabs
set tabstop=2     " a tab is two spaces
set shiftwidth=2  " autoindent two spaces

set smartindent
set smarttab

set nocompatible  " disable vi compatibility mode

filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'slim-template/vim-slim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/EasyGrep'
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on
syntax on

runtime macros/matchit.vim

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
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup      " don't let vim write backup files
set noswapfile

" EasyGrep settings
let g:EasyGrepRecursive = 1
let g:EasyGrepCommand = 1

" remove trailing whitespace
autocmd FileType ruby,css,scss,html,js,erb,haml,slim,coffee,yaml,thor autocmd BufWritePre <buffer> :%s/\s\+$//e

" use F1 and F2 to paste/copy from/to the system clipboard
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
vmap <F2> :w !pbcopy<CR><CR>

" auto open nerdtree if no files passed
autocmd vimenter * if !argc() | NERDTree | endif

" auto close vim if only nerdtree window remains open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 

" search for the word under the cursor in project - requires ack & vim-ack
nnoremap <F4> *<C-O>:AckFromSearch!<CR>

set grepprg=ack

" replace the word under the cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" add ctrl-p file open support
set runtimepath^=~/.vim/bundle/ctrlp.vim

" local replace Ruby variable - not yet reliable at all
" map gr gdv<Plug>(textobj-rubyblock-a):s/<C-R>///g<left><left>
