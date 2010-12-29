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
  " Automatically use markdown syntax highlighting for .md, .mkd and .markdown
  " files
  au  BufNewFile,BufRead *.md set syntax=markdown
  au  BufNewFile,BufRead *.mkd set syntax=markdown
  au  BufNewFile,BufRead *.markdown set syntax=markdown
  " Automatically use mustache syntax highlighting for .mustache files
  au  BufNewFile,BufRead *.mustache set syntax=mustache
  " Automatically use puppet syntax highlighting for .pp files
  au  BufNewFile,BufRead *.pp set syntax=puppet
endif


