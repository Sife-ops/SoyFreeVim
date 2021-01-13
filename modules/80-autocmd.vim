autocmd BufWritePost *.ms !groff -ms -Tpdf % > %:p:h/groffout.pdf
autocmd BufWritePost *.tex !pdflatex %
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
autocmd BufWritePost *config.def.h !rm -f config.h && sudo make clean install
autocmd BufWritePost *polybar/config !pkill -USR1 -x polybar
autocmd BufWritePost *sxhkd/* !pkill -USR1 -x sxhkd
autocmd BufWritePre * %s/\s\+$//e
