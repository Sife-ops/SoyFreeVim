" Skeletons are read from files in the `skeld' directory. Skeletons should be
" named in the followint manner:
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

let g:_skeld = '~/.local/share/vim/skeletons/'
autocmd FileType css let g:_skelp = 'css-'
autocmd FileType html let g:_skelp = 'html-'
autocmd FileType java let g:_skelp = 'java-'
autocmd FileType nroff let g:_skelp = 'roff-'
autocmd FileType plaintex let g:_skelp = 'tex-'
autocmd FileType sh let g:_skelp = 'shell-'
autocmd FileType tex let g:_skelp = 'tex-'
autocmd FileType vim let g:_skelp = 'vim-'

function! Sife_insert_skeleton()
    execute "normal! viw\"0d"
    let g:_skel = @0
    execute "normal! i\<cr>"
    execute "-1read " . g:_skeld . g:_skelp . g:_skel
    execute "normal! k3J0kJi\<cr>"

    mark 9
    if search('<==>')
        let g:_strsub = input('Enter text: ')
        silent :%s/<==>/\=g:_strsub/g
    endif
    normal! '9

    execute "normal! /<++>\<cr>4x"
    startinsert
endfunction
