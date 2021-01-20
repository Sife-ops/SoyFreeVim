augroup allbufs
    autocmd! allbufs
    autocmd BufWritePre * %s/\s\+$//e
augroup end
