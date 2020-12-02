" Disables automatic commenting on newline: 
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o 

" Delete all trailing whitespace 
" autocmd BufWritePre * %s/\s\+$//e 

" Merge Xdefaults or Xresources 
autocmd BufWritePost *Xresources,*Xdefaults !xrdb % 

" Restart sxhkd when sxhkdrc is updated 
autocmd BufWritePost *sxhkd/* !pkill -USR1 -x sxhkd 

" Restart polybar when config.ini is updated. 
autocmd BufWritePost *polybar/config !pkill -USR1 -x polybar 

" Compile suckless programs
autocmd BufWritePost *config.def.h !rm -f config.h && sudo make clean install 

" Compile groff_ms documents
 autocmd BufWritePost *.ms !groff -ms -Tpdf % > %:p:h/groffout.pdf 
" autocmd BufWritePost *.ms !tbl % | groff -ms -Tps > %:p:h/groffout.ps
" autocmd BufWritePost *ms_example.ms !tbl % | pic | eqn | refer -p %:p:h/ms_example.bib | groff -ms -Tps > %:p:h/groffout.ps 

" Compile groff_mm documents
" autocmd BufWritePost *.mm !groff -mm -Tps % > %:p:h/groffout.ps 

" Automatically compile latex
autocmd BufWritePost *.tex !pdflatex % 

