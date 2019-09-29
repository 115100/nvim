" essential options
set number                " line numbers
set showcmd               " show current command
set undofile              " persistent undo
set relativenumber        " nk, nj

set guicursor=      " https://github.com/neovim/neovim/wiki/FAQ#nvim-shows-weird-symbols-2-q-when-changing-modes
set syntax=on       " enable syntax highlighting

set colorcolumn=80
set scrolloff=5

" search options
set ignorecase
set smartcase

" expand tabs for silly languages
autocmd FileType cabal,haskell,python,yaml setlocal expandtab
" fix stupid indentation problems with yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 indentkeys-=0# indentkeys-=<:>

execute 'source' $HOME."/.config/nvim/plugins.vim"
execute 'source' $HOME."/.config/nvim/remaps.vim"
