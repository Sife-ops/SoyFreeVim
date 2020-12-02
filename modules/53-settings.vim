let s:plugins = "~/.config/nvim/plugin"

if filereadable(expand(glob(s:plugins."/*-nnn.vim")))
    let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.9, 'border': 'sharp' } }
endif

if filereadable(expand(glob(s:plugins."/*-fzf.vim")))
    let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9, 'border': 'sharp' } }
endif

if filereadable(expand(glob(s:plugins."/*-vim-easymotion.vim")))
    map <leader><leader>j <Plug>(easymotion-overwin-line)
    map <leader><leader>k <Plug>(easymotion-overwin-line)
    map <leader><leader>w <Plug>(easymotion-overwin-w)
endif

if filereadable(expand(glob(s:plugins."/*-fern.vim")))
    noremap <silent> <C-f> :Fern . -drawer -toggle <CR>
    function! s:init_fern() abort
        nmap <buffer> B <Plug>(fern-action-rename)
        nmap <buffer> N <Plug>(fern-action-new-path)
        nmap <buffer> L <Plug>(fern-action-open:vsplit)
        nmap <buffer> J <Plug>(fern-action-open:split)
        nmap <buffer> R <Plug>(fern-action-remove)
        nmap <buffer> <leader> <Plug>(fern-action-mark)
    endfunction
    augroup fern-custom
      autocmd! *
      autocmd FileType fern call s:init_fern()
    augroup END
    " let g:fern#renderer = "nerdfont"
endif

if filereadable(expand(glob(s:plugins."/*-vim-floaterm.vim")))
    nnoremap <leader>f :FloatermNew lf<cr>
    nnoremap <leader>z :FloatermNew<cr>
endif

if filereadable(expand(glob(s:plugins."/*-gruvbox.vim")))
    colorscheme gruvbox
    set background=dark
    hi Normal guibg=0
endif

if filereadable(expand(glob(s:plugins."/*-vim-hexokinase.vim")))
    let g:Hexokinase_highlighters = ['backgroundfull']
endif

if filereadable(expand(glob(s:plugins."/*-better-vim-tmux-resizer.vim")))
    let g:tmux_resizer_no_mappings = 1
    nnoremap <silent> <C-M-h> :TmuxResizeLeft<CR>
    nnoremap <silent> <C-M-j> :TmuxResizeDown<CR>
    nnoremap <silent> <C-M-k> :TmuxResizeUp<CR>
    nnoremap <silent> <C-M-l> :TmuxResizeRight<CR>
endif

if filereadable(expand(glob(s:plugins."/*-undotree.vim")))
    nnoremap <leader>u :UndotreeShow<cr>
endif

if filereadable(expand(glob(s:plugins."/*-vimwiki.vim")))
    let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
        \ 'path_html': '~/Documents/vimwiki_html/',
        \ 'auto_export': 1}]
    let g:vimwiki_folding = 'list'
endif
