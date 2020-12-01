" Skeletons {{{
" Skeletons are read from files in the `skeldir' directory. Skeletons should be
" named in the following manner:
"
" <group>-<abbreviation>
"
" where <group> is one of the values assigned to the `skelp' variable at load
" time, and <abbreviation> is the form of the skeleton to be expanded. For
" example, a skeleton file named shell-if containing the following:
"
" if <++>; then
"   <++>
" fi
"
" will be expanded upon inserting the characters matching the <abbreviation>
" string, in this case `if', and calling the function Sife_insert_skeleton
" while the cursor above the abbreviation. I suggest binding this to convenient
" key-chord in insert mode such as the following:
"
" inoremap jj <esc>:call Sife_insert_skeleton()<cr>
"
" Furthermore, I suggest using placeholders such as `' in the example
" above that you can jump to easily with a command such as the following:
"
" inoremap kk <esc>/<++><cr>4xi
let g:skeldir = '~/.local/share/vim/skeletons/'
function! SifeInsertSkeleton()
     
    let l:regbu = @"
     
    normal! viwd
     
    let l:skel = @"
    let @" = l:regbu
     
    execute "normal! i\<cr>"
    execute "-1read " . g:skeldir . &filetype . "-" . l:skel
    execute "normal! k3J0kJi\<cr>"
     
    let l:regbu = @0
    normal! m0
     
    if search('<==>')
        let l:strsub = input('Enter text: ')
        silent! :%s/<==>/\=l:strsub/g
    endif
    normal! '0
     
    let @0 = l:regbu
     
    execute "normal! /<++>\<cr>4x"
    startinsert
endfunction "}}}

" Append semicolon to line if there is none and go next line in insert mode. {{{
function! SifeNewlineMaybeSemicolon()
    if match(getline('.'), ';') < 0
        execute "normal! A;"
        execute "normal! o "
        startinsert
    else
        execute "normal! o "
        startinsert
    endif
endfunction "}}}

" Grep selection and show quickfix {{{
" nnoremap <leader>z :set operatorfunc=SifeGrepOperator<cr>g@
function! SifeGrepOperator(type)
    let saved_unnamed_register = @@
     
    if a:type ==# 'v'
        execute "normal! `<v`>y"
    elseif a:type ==# 'char'
        execute "normal! `[v`]y"
    else
        return
    endif
     
    silent execute "grep! -R " . shellescape(@@) . " ."
    copen
     
    let @@ = saved_unnamed_register
endfunction "}}}

" Select region surrounded by curly braces {{{
function! SifeSelectParagraph()
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
endfunction "}}}

" Toggle foldcolumn {{{
" nnoremap <leader>mfc :call FoldColumnToggle()<cr>
function! SifeFoldColumnToggle()
    " echom &foldcolumn
    if &foldcolumn
        setlocal foldcolumn=0
    else
        setlocal foldcolumn=4
    endif
endfunction "}}}

" Toggle quickfix {{{
" nnoremap <leader>q :call QuickfixToggle()<cr>
let g:quickfix_is_open = 0
function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction "}}}
