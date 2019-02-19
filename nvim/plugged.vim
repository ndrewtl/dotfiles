" Andy Lee's vim plugins

call plug#begin('~/.local/share/nvim/plugged')

  " Airline -> status bar
  Plug 'vim-airline/vim-airline'
  " Use powerline separators
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''

  Plug 'leafgarland/typescript-vim'

  " Select airline theme
  Plug 'vim-airline/vim-airline-themes'
  let g:airline_theme = 'murmur'

  " Tree display for files
  Plug 'scrooloose/nerdtree'
  let NERDTreeShowHidden=1

  " gc<motion> for comment
  Plug 'tomtom/tcomment_vim'


  " " LaTeX
  " Plug 'vim-latex/vim-latex'
  Plug 'lervag/vimtex'

  " Build things
  Plug 'neomake/neomake'
    " Build tex
    let g:neomake_tex_enabled_makers  = ['pdflatex']
    let g:neomake_haskell_enabled_makers = ['hlint']

  " surround thing with other things
  Plug 'tpope/vim-surround'

  " Colorscheme
  Plug 'sickill/vim-monokai'

  Plug 'koryschneider/vim-trim'

call plug#end()
