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

  " Currently trying out
  Plug 'sbdchd/neoformat'
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'

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
  Plug 'lervag/vimtex'

  " Colorscheme
  Plug 'NLKNguyen/papercolor-theme'

  " Misc
  Plug 'koryschneider/vim-trim'

call plug#end()
