let s:plugins = "~/.config/nvim/plugin"

if filereadable(expand(glob(s:plugins."/*-completion-nvim.vim")))
    set completeopt=menuone,noinsert,noselect
    set shortmess+=c
    let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
endif

if filereadable(expand(glob(s:plugins."/*-nvim-lspconfig.vim")))
    lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
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

" vim: fdm=marker fmr="^,"$
