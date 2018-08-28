" Andy Lee's vim plugins

call plug#begin('~/.local/share/nvim/plugged')

  " Airline -> status bar
  Plug 'vim-airline/vim-airline'
  " Use powerline separators
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''

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

  " surround thing with other things
  Plug 'tpope/vim-surround'

  " Colorscheme
  Plug 'arcticicestudio/nord-vim', { 'tag': 'v0.8.0' }

  " Move between panes
  Plug 'christoomey/vim-tmux-navigator'

call plug#end()
