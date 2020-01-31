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
    \ 'terraform': ['terraform-lsp'],
\ }

let g:LanguageClient_useVirtualText = 0

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()
autocmd BufWritePre *.rs :call LanguageClient#textDocument_formatting_sync()
