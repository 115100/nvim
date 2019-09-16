set hidden

let s:py_base = systemlist('python -m site --user-base')[0]

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ 'go': ['gopls'],
    \ 'haskell': ['hie-wrapper'],
    \ 'python': [s:py_base.'/bin/pyls'],
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
\ }

let g:LanguageClient_useFloatingHover = 1
let g:LanguageClient_useVirtualText = 0

autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
autocmd BufWritePre *.rs :call LanguageClient#textDocument_formatting_sync()
