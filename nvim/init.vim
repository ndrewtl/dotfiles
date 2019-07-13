" Get current directory
let g:dir = expand('<sfile>:h')
" Load related configurations
execute 'source' g:dir . '/plugged.vim'
execute 'source' g:dir . '/mappings.vim'
execute 'source' g:dir . '/theming.vim'
execute 'source' g:dir . '/completions.vim'

" Automatically copy what I yank in vim
set clipboard=unnamed
