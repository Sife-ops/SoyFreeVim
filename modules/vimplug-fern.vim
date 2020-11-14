" Vimplug declaration
Plug 'lambdalisue/fern.vim'

" Configuration
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
