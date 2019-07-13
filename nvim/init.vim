" Load plugins
source $HOME/.config/nvim/plugged.vim
source mappings.vim
source theming.vim


" Disable Scrolling
set mouse=nvi
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2
set smartindent

"Completions
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
        \ 'whitelist': ['rust'],
        \ })
endif

" Folding
" set foldmethod=indent
" Automatically copy what I yank in vim
set clipboard=unnamed
