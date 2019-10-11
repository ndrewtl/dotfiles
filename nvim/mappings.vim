" Define leader key
let mapleader = ","

" Normal maps
nmap <Leader>w :write<Enter>
nmap <A-Space> :write<Enter>

" Quitting
nmap <Leader>q :quit<Enter>
nmap q :quit<Enter>

" Completions
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" use FZF for exploring files
" mnemonic is j for 'jump to another file'
nmap <Leader>j :GFiles<Enter>
nmap <Leader>J :Files<Enter>

" fix
nmap <Leader>f :LspCodeAction<Enter>

" format
nmap <Leader>F :LspDocumentFormat<Enter>

nmap <Leader>d :LspDefinition<Enter>
nmap <Leader>D :LspDeclaration<Enter>


" Make Y behave like C and D
nmap Y y$
" Redo with U
nmap U :redo<Enter>

" Reload config
nmap <Leader>R :source $HOME/.config/nvim/init.vim<Enter>
" Clear search
nmap <Leader>h :nohlsearch<Enter>

" Normal maps

" Insert maps
imap <A-Space> <Esc>

" Visual maps
vmap <A-Space> <Esc>

" Disable Scrolling
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>

" make
map <Leader>m :!make<Enter>

