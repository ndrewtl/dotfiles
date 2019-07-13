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

" Disable Scrolling
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>

