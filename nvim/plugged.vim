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

  " FZF file navigation
  Plug '/usr/bin/fzf'
  Plug 'junegunn/fzf.vim'

  " Linting
  Plug 'w0rp/ale'

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
  Plug 'cespare/vim-toml'

  " Trim files
  Plug 'koryschneider/vim-trim'

  " " LaTeX
  " Plug 'vim-latex/vim-latex'
  Plug 'lervag/vimtex'

  " Colorscheme
  Plug 'NLKNguyen/papercolor-theme'

  " Misc
  Plug 'koryschneider/vim-trim'

call plug#end()
