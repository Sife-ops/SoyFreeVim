" leader
let mapleader = " "

" windows/navigation
" nnoremap <leader>wh :vertical leftabove split<CR>
" nnoremap <leader>wj :split<CR>
" nnoremap <leader>wk :leftabove split<CR>
" nnoremap <leader>wl :vertical split<CR>

nnoremap <leader>2 :split<CR>
nnoremap <leader>3 :vertical split<CR>

" nnoremap <leader>h :wincmd h<cr>
" nnoremap <leader>j :wincmd j<cr>
" nnoremap <leader>k :wincmd k<cr>
" nnoremap <leader>l :wincmd l<cr>

" nnoremap <leader><C-h> :vertical topleft split<CR>
" nnoremap <leader><C-j> :botright split<CR>
" nnoremap <leader><C-k> :topleft split<CR>
" nnoremap <leader><leader><C-h> :vertical topright split<CR> *Not supported*

nnoremap <leader>c :wincmd q<cr>
nnoremap <leader>n :tabnew<cr>
nnoremap <leader>d :tabclose<cr>
nnoremap <leader>[ :tabprev<cr>
nnoremap <leader>] :tabnext<cr>

" skeletons
inoremap jj <esc>:call Sife_insert_skeleton()<cr>
inoremap kk <esc>/<++><cr>4xi

" other actions
inoremap ZZ <esc>:wq<cr>
inoremap {{ <esc>A {<cr>}<esc>O
inoremap }} <esc>/}<cr>o<cr>
inoremap ;; <esc>:call Sife_newline_maybe_semicolon()<cr>
inoremap <C-o> <cr><esc>O
nnoremap <leader>b i<cr><esc>
nnoremap <leader>o $a<cr><esc>k
nnoremap <leader>d ddO
nnoremap <leader>f :Lf<cr>
nnoremap <leader>g :%g/
nnoremap <leader>mch :set cursorline! cursorcolumn!<cr>
nnoremap <leader>mln :set number! relativenumber!<cr>
nnoremap <leader>mwr :set wrap!<cr>
nnoremap <leader>p :call Sife_select_paragraph()<cr>
nnoremap <leader>q :wq<cr>
nnoremap <leader>r :%s/
nnoremap <leader>s :w<cr>
nnoremap <leader>so :source ~/.config/nvim/init.vim<cr>
" nnoremap <leader>t ?{<cr>V/}<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>xc :wqa<cr>
nnoremap <leader>z :GFiles<cr>
nnoremap <leader>; :Commentary<cr>j
nnoremap <leader>, V<
nnoremap <leader>. V>
" nnoremap <silent><leader>z :call
    " \ fzf#run(fzf#wrap({'source': 'find ./ -type f', 'options': '--preview="head -n 50 {}"'}))<cr>
