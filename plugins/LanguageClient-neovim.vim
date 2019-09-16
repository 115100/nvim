set hidden

let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ 'go': ['gopls'],
    \ 'haskell': ['hie-wrapper'],
    \ 'python': ['/home/user/.local/bin/pyls'],
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
\ }

let g:LanguageClient_useFloatingHover = 1
let g:LanguageClient_useVirtualText = 0

autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
autocmd BufWritePre *.rs :call LanguageClient#textDocument_formatting_sync()
