autocmd BufWritePre *.py execute ':Black'

let g:black_virtualenv=$HOME."/.local/share/nvim/black"
let g:black_linelength=80
