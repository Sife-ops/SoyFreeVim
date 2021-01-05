"^ normal
nnoremap L zc
"$

"^ insert
inoremap "" ""<++><esc>F"i
inoremap '' ''<++><esc>F'i
inoremap () ()<++><esc>F)i
inoremap ;; <esc>A;<esc>o
inoremap <> <><++><esc>F>i
inoremap <C-b> <esc>m0a<cr><esc>`0a
inoremap <C-k> <esc>lC
inoremap <C-o> <esc>m0o<esc>`0a
inoremap ZZ <esc>:wq<cr>
inoremap [] []<++><esc>F]i
inoremap jj <esc>:call SifeInsertSkeleton()<cr>
inoremap jk <esc>
inoremap kk <esc>/<++><cr>cgn
inoremap {{ <esc>A {<cr>}<esc>O
inoremap {} {}<++><esc>F}i
inoremap }} <esc>/}<cr>o<cr>
"$

"^ leader
let mapleader = " "
nnoremap <leader>" :vsplit<CR>
nnoremap <leader>% :split<CR>
nnoremap <leader>& :tabclose<cr>
nnoremap <leader>; :Commentary<cr>j
nnoremap <leader>P :-1read $CLIPBOARD<cr>
nnoremap <leader>[ :tabprev<cr>
nnoremap <leader>] :tabnext<cr>
nnoremap <leader>b m0i<cr><esc>`0
nnoremap <leader>c :tabnew<cr>
nnoremap <leader>g :%g/
nnoremap <leader>i m0=ip`0
nnoremap <leader>mch :set cursorline! cursorcolumn!<cr>
nnoremap <leader>mcs :call SifeCheatSheet()<cr>
nnoremap <leader>mln :set number! relativenumber!<cr>
nnoremap <leader>mwr :set wrap!<cr>
nnoremap <leader>o m0o<esc>`0
nnoremap <leader>p :read $CLIPBOARD<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>r :%s/
nnoremap <leader>sa ggVG
nnoremap <leader>so :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>th viWldBhpB
nnoremap <leader>tl WviWldBhpl
nnoremap <leader>w :w<cr>
nnoremap <leader>x :wincmd q<cr>
nnoremap <leader>z :wqa!<cr>
vnoremap <leader>r :!rev<cr>
vnoremap <leader>s :sort<cr>
vnoremap <leader>y :w! $CLIPBOARD<cr>
"$

" vim: fdm=marker fmr="^,"$
