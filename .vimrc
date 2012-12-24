set expandtab     " use spaces for tabs
set tabstop=2     " a tab is two spaces
set shiftwidth=2  " autoindent two spaces
set smartindent

syntax enable

autocmd FileType rb autocmd BufWritePre <buffer> :%s/\s\+$//e

call pathogen#infect()

set hidden        
set nowrap        " don't wrap lines
set number        " show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " show matching parentheses
set ignorecase    " when searching
set smartcase     " when searching - ignore case only when searching all lower case
set smarttab
set hlsearch      " highlight search terms
set incsearch     " show matches as you type search terms

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup      " don't let vim write backup files
set noswapfile

" auto open nerdtree if no files passed
autocmd vimenter * if !argc() | NERDTree | endif

" auto close vim if only nerdtree window remains open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
