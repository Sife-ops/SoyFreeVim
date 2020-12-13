function! SifeInsertSkeleton()
    " Insert a skeleton.
    normal! viwd
    let l:skel = @"
    execute "normal! m0i\<cr>"
    execute "-1read " . g:skeldir . &filetype . "-" . l:skel
    execute "normal! `0J=ip`0"
    execute "normal! /<++>\<cr>4x"
    startinsert
endfunction
let g:skeldir = "~/.local/share/skeletons/"

function! SifeNewlineMaybeSemicolon()
    " Append semicolon to line if there is none and go to next line in insert
    " mode.
    if match(getline('.'), ';') < 0
        execute "normal! 0A;"
        " execute "normal! o"
        " execute "normal! $a;\<esc>0"
        " startinsert
    else
        execute "normal! o"
        startinsert
    endif
endfunction

function! SifeSelectParagraph()
    " Select region surrounded by curly braces.
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
