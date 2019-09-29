autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd CompleteDone * silent! pclose!
set completeopt=noinsert,menuone,noselect
