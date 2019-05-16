" Andy Lee's vim plugins

call plug#begin('~/.local/share/nvim/plugged')

  " Make vim word motions better
  Plug 'chaoren/vim-wordmotion'
  let g:wordmotion_prefix = ''

  " .editorconfig support
  Plug 'editorconfig/editorconfig-vim'

  " gc<motion> for comment
  Plug 'tomtom/tcomment_vim'

  " surround thing with other things
  Plug 'tpope/vim-surround'

  " Airline -> status bar
  " TODO implement your own status bar
  Plug 'vim-airline/vim-airline'
  " Use powerline separators
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''

  " Select airline theme
  Plug 'vim-airline/vim-airline-themes'
  let g:airline_theme = 'murmur'

  " Languages
  Plug 'leafgarland/typescript-vim'
  Plug 'kchmck/vim-coffee-script'

  " Trim files
  Plug 'koryschneider/vim-trim'

  " " LaTeX
  " Plug 'vim-latex/vim-latex'
  Plug 'lervag/vimtex'

  " Build things
  Plug 'neomake/neomake'
    " Build tex
    let g:neomake_tex_enabled_makers = ['lacheck']

  " Colorscheme
  Plug 'dikiaap/minimalist'

  Plug 'koryschneider/vim-trim'

call plug#end()
