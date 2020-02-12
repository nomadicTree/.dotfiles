call plug#begin(stdpath('data') . '/plugged')

Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kshenoy/vim-signature'

call plug#end()

" colorscheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
let g:airline_powerline_fonts = 1

" QoL
set number " show line numbers
set showmatch " show matching parens
set title " override window title
set list listchars=tab:>\ ,trail:#,extends:>,nbsp:+ " Visual tab and whitespace characters
set paste
set mouse=a
set cc=120
syntax on " enable syntax processing
let mapleader="," "set leader to ,

" More history/undo
set history=1000
set undolevels=1000

" Searching
set ignorecase      " ignore case when searching
set smartcase       " ignore 'ignorecase' if search contains caps
set hlsearch        " highlight search results
set incsearch       " incrementally search

" Indentation
set tabstop=2       " number of visual spaces per tab
set softtabstop=2   " number of actual spaces per tab
set shiftwidth=2    " number of spaces used by indentation commands
set expandtab       " tabs are spaces
set autoindent
set nosmartindent

:autocmd FileType make set noexpandtab " use tabs for makefiles
:autocmd FileType python set ts=4 sw=4

" Switch tab
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

" Simplify switching between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

set splitbelow
set splitright

:set wildmode=full
