" vimscript
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=expr 
        \ foldexpr=getline(v:lnum)=~'^$'&&getline(v:lnum+1)=~'\\S'?'<1':1
augroup END


