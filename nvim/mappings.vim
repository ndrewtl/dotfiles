" Define leader key
let mapleader = ","

" Normal maps
nmap <Leader>w :write<Enter>
nmap <A-Space> :write<Enter>

" Quitting
nmap <Leader>q :quit<Enter>

" use FZF for exploring files
" mnemonic is j for 'jump to another file'
nmap <Leader>j :GFiles<Enter>
nmap <Leader>J :Files<Enter>

" Make Y behave like C and D
nmap Y y$
" Redo with U
nmap U :redo<Enter>

" Reload config
nmap <Leader>R :source $HOME/.config/nvim/init.vim<Enter>
" Clear search
nmap <Leader>h :nohlsearch<Enter>

" Insert maps
imap <A-Space> <Esc>

" Visual maps
vmap <A-Space> <Esc>

" Disable Scrolling
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>

" make
map <Leader>m :!make<Enter>
