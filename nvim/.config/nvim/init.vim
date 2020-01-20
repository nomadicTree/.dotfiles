call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'

" Appearance
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

call plug#end()

" colorscheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" QoL
set number " show line numbers
set showmatch " show matching parens
set title " override window title
set list listchars=tab:>\ ,trail:#,extends:>,nbsp:+ " Visual tab and whitespace characters
set paste


" More history/undo
set history=1000
set undolevels=1000

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Indentatin
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nosmartindent

:autocmd FileType make set noexpandtab " use tabs for makefiles
:autocmd FileType python set ts=4 sw=4
