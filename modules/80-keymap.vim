" leader {{{
let mapleader = " " "}}}

" windows/navigation {{{
nnoremap <leader>h :vertical leftabove split<CR>
nnoremap <leader>j :split<CR>
nnoremap <leader>k :leftabove split<CR>
nnoremap <leader>l :vertical split<CR>
 
nnoremap <leader>c :wincmd q<cr>
nnoremap <leader>n :tabnew<cr>
nnoremap <leader>d :tabclose<cr>
nnoremap <leader>[ :tabprev<cr>
nnoremap <leader>] :tabnext<cr> "}}}

" general {{{
inoremap <C-b> <esc>m0a<cr><esc>`0a
inoremap <C-k> <esc>lC
inoremap <C-o> <esc>m0o<esc>`0a
inoremap ZZ <esc>:wq<cr>
inoremap cc <esc>cc
inoremap ii <esc>magg=G`ai
inoremap jk <esc>
nnoremap <leader>; :Commentary<cr>j
nnoremap <leader>b m0i<cr><esc>`0
nnoremap <leader>d ddO
nnoremap <leader>g :%g/
nnoremap <leader>mch :set cursorline! cursorcolumn!<cr>
nnoremap <leader>mln :set number! relativenumber!<cr>
nnoremap <leader>mwr :set wrap!<cr>
nnoremap <leader>o m0o<esc>`0
nnoremap <leader>p :call Sife_select_paragraph()<cr>
nnoremap <leader>r :%s/
nnoremap <leader>so :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>xc :wqa<cr>
nnoremap <silent><leader>t :call
    \ fzf#run(fzf#wrap({'source': 'find ./ -type f', 'options': '--preview="head -n 50 {}"'}))<cr>
nnoremap H ^
nnoremap L $
"}}}

" Testing {{{
" nnoremap <leader>z :call Sife_insert_skeleton()<cr>
" }}}
