" Load plugins
source $HOME/.config/nvim/plugged.vim

" Line numbers
set number

" colorscheme
colorscheme minimalist

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
" Automatically copy shit I yank in vim
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
  " I use this key by mistake a lot
  nmap . <nop>

  " Make Y behave like C and D
  nmap Y y$
  " Redo with U
  nmap U :redo<Enter>

  " Reload config
  nmap <Leader>R :source $HOME/.config/nvim/init.vim<Enter>
  " Clear search
  nmap <Leader>h :nohlsearch<Enter>
  " Alias to make quickly
  nmap <Leader>m :Neomake<Enter>


"\Normal maps

" Insert maps
imap <A-Space> <Esc>

" Visual maps
vmap <A-Space> <Esc>
