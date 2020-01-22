" Andy Lee's vim plugins

call plug#begin('~/.local/share/nvim/plugged')

  " Essentials
  Plug 'chaoren/vim-wordmotion'
  let g:wordmotion_prefix = ''
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-surround'
  Plug '/usr/bin/fzf'
  Plug 'junegunn/fzf.vim'

  " Language-Server support
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Airline -> status bar
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
  Plug 'lervag/vimtex'

  " Colorscheme
  Plug 'NLKNguyen/papercolor-theme'

call plug#end()
