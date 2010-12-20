" Turn off space tabs, use hard tabs
set noexpandtab

" Turn off visualbell, it's very very annoying
set novisualbell

"Better line wrapping 
set wrap
set textwidth=80
set formatoptions=qrn1

colorscheme earendel

if has("autocmd")
  au  BufNewFile,BufRead *.md set syntax=markdown
  au  BufNewFile,BufRead *.markdown set syntax=markdown
  au  BufNewFile,BufRead *.mustache set syntax=mustache
endif


