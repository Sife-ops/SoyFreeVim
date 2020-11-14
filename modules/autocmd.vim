" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Delete all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Source shell configs
autocmd BufWritePost *.zshrc,*.zshenv,*aliasrc !source %

" Merge Xdefaults or Xresources
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Restart bspwm when bspwmrc is updated
autocmd BufWritePost *bspwmrc !bspc wm -r

" Restart sxhkd when sxhkdrc is updated
autocmd BufWritePost *sxhkd/* !pkill -USR1 -x sxhkd

" Restart polybar when config.ini is updated.
autocmd BufWritePost *polybar/config !pkill -USR1 -x polybar

" Compile suckless programs
autocmd BufWritePost *config.def.h !rm -f config.h && sudo make clean install

" Compile and restart xmonad
autocmd BufWritePost *xmonad.hs !xmonad --recompile && xmonad --restart

" Compile groff_ms documents
 autocmd BufWritePost *.ms !groff -ms -Tpdf % > %:p:h/groffout.pdf
" autocmd BufWritePost *.ms !tbl % | groff -ms -Tps > %:p:h/groffout.ps
" autocmd BufWritePost *ms_example.ms !tbl % | pic | eqn | refer -p %:p:h/ms_example.bib | groff -ms -Tps > %:p:h/groffout.ps

" Compile groff_mm documents
 autocmd BufWritePost *.mm !groff -mm -Tps % > %:p:h/groffout.ps

" Autorefresh websites while editing
" autocmd BufReadPre *nginx/*index.html !sed -i '2i<meta http-equiv="refresh" content="3">' %
" autocmd ExitPre *nginx/*index.html !sed -i '/<meta http-equiv="refresh" content="3">/d' %
