runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vim/bundle'))
end

syntax enable
filetype plugin indent on
set background=dark
if has("gui_running")  
  colorscheme vividchalk
else
  colorscheme vividchalk
end

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

set clipboard=unnamed

command! W :w

let mapleader = ","

nmap <silent> <c-n> :NERDTreeToggle<CR>

set hidden

set cmdheight=2
set showcmd
set noea
set number

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set laststatus=2

set backspace=indent,eol,start

set hlsearch
set incsearch
set viminfo='20,<50,s10,h,%
set wildmenu
set wildmode=list:longest,full

set ignorecase
set smartcase

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set history=1000
set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
":hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
set tabline=2
set cursorline
hi CursorLine guifg=NONE guibg=#323232 gui=NONE ctermfg=NONE ctermbg=darkgray cterm=BOLD
:set guifont=DejaVu\ Sans\ Mono:h13

set shell=/bin/sh

" Make tab navigation nicer                                                                                                                                                            
map <C-J> :tabn<CR>
map <C-K> :tabp<CR>

" Make opening files in a new tab nicer
map <C-O> :tabnew 
