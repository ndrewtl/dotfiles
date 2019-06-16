" Load plugins
source $HOME/.config/nvim/plugged.vim

" Line numbers
set number

set t_Co=256
set background=dark
colorscheme PaperColor

" line wrapping off
set nowrap

" Text width
set textwidth=80

" Disable Scrolling
set mouse=nvi
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent

" Folding
" set foldmethod=indent
" Automatically copy what I yank in vim
set clipboard=unnamed

" Define leader key
let mapleader = ","

" Normal maps
  nmap <Leader>w :write<Enter>
  nmap <A-Space> :write<Enter>

  " Quitting
  nmap <Leader>q :quit<Enter>
  nmap <Leader>q :quit<Enter>
  nmap q :quit<Enter>

  " use FZF for exploring files
  nmap <Leader>f :GFiles<Enter>
  nmap <Leader>F :Files<Enter>

  " Make Y behave like C and D
  nmap Y y$
  " Redo with U
  nmap U :redo<Enter>

  " Reload config
  nmap <Leader>R :source $HOME/.config/nvim/init.vim<Enter>
  " Clear search
  nmap <Leader>h :nohlsearch<Enter>


"\Normal maps

" Insert maps
imap <A-Space> <Esc>

" Visual maps
vmap <A-Space> <Esc>
