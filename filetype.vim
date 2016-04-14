if exists("did_load_filetypes")
 finish
endif

augroup filetypedetect
 au! BufRead,BufNewFile *.fdf 		setfiletype siesta
augroup END
