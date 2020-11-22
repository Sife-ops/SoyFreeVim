" Insert number sequence in line beginning of selected lines.
" function! Sife_line_beginning_number_sequence()
    " let l:strt = input('Start: ')
    " let l:inc = input('Increment: ')
    " execute "normal! :let i=" . l:strt . " | '<,'>g/^/ s//\=i . \" \"/ | let i+=" . l:inc
    " execute "normal! :let i=1 | '<,'>g/^/ s//\\=i . \" \"/ | let i+=1\<cr>"
" endfunction
" vnoremap <leader>t :call Sife_line_beginning_number_sequence()<cr>

" Append semicolon to line if there is none and go next line in insert mode.
function! Sife_newline_maybe_semicolon()
    if match(getline('.'), ';') < 0
        execute "normal! A;"
        execute "normal! o "
        startinsert
    else
        execute "normal! o "
        startinsert
    endif
endfunction

" Select region surrounded by {  }
function! Sife_select_paragraph()
    let l:i = 1

    if match(getline('.'), '{') > 0
        execute "normal! /{\<cr>m9"
    else
        execute "normal! ?{\<cr>m9"
    endif

    while l:i > 0
        execute "normal! /{\\|}\<cr>"
        if match(getline('.'), '{') > 0
            let l:i += 1
        else
            let l:i -= 1
        endif
    endwhile

    execute "normal! m0"
    execute "normal! '9V'0"

endfunction
