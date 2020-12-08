"^ normal
nnoremap L zc
"$

"^ insert
inoremap <C-b> <esc>m0a<cr><esc>`0a
inoremap <C-k> <esc>lC
inoremap <C-o> <esc>m0o<esc>`0a
inoremap ZZ <esc>:wq<cr>
inoremap cc <esc>cc
inoremap ii <esc>magg=G`ai
inoremap jk <esc>
inoremap kk <esc>/<++><cr>cgn
"$

"^ leader
let mapleader = " " 
nnoremap <leader>& :tabclose<cr>
nnoremap <leader>; :Commentary<cr>j
nnoremap <leader>[ :tabprev<cr>
nnoremap <leader>] :tabnext<cr> 
nnoremap <leader>b m0i<cr><esc>`0
nnoremap <leader>c :tabnew<cr>
nnoremap <leader>g :%g/
nnoremap <leader>% :split<CR>
nnoremap <leader>" :vsplit<CR>
nnoremap <leader>mch :set cursorline! cursorcolumn!<cr>
nnoremap <leader>mln :set number! relativenumber!<cr>
nnoremap <leader>mwr :set wrap!<cr>
nnoremap <leader>o m0o<esc>`0
nnoremap <leader>r :%s/
nnoremap <leader>so :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>th viWldBhpB
nnoremap <leader>tl WviWldBhpl
nnoremap <leader>w :w<cr>
nnoremap <leader>x :wincmd q<cr>
nnoremap <leader>xc :wqa<cr>
"$

"^ java
augroup filetype_java
    autocmd!
    autocmd FileType java inoremap <buffer> {{ <esc>A {<cr>}<esc>O
    autocmd FileType java inoremap <buffer> }} <esc>/}<cr>o<cr>
    autocmd FileType java inoremap <buffer> ;; <esc>A;<esc>o
augroup END
"$

"^ shell
augroup filetype_shell
    autocmd!
    inoremap $$ $()<esc>i
    inoremap if if [  <esc>m0i ]; then<cr><++><cr>fi<esc>`0i
    inoremap case case  <esc>m0i in<cr><++>) <++> ;;<cr>esac<esc>`0i
augroup END
"$

" vim: fdm=marker fmr="^,"$
