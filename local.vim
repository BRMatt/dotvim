let $VIMHOME=expand('<sfile>:p:h')

" Auto detect filetypes
filetype on

" Turn off space tabs, use hard tabs
set noexpandtab
set sw=4
set ts=4

" Stop vim from saving files all the time
set noautowriteall

" Turn off visualbell, it's very very annoying
set novisualbell

"Better line wrapping 
set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=80

" Settings for snipmate templates
let g:snips_author = 'Matt Button <matthew@sigswitch.com>'
let g:snippets_dir = $VIMHOME.'/snippets'

" Settings for NERDTree
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowBookmarks = 1

" Just set the colorscheme
colorscheme solarized

" Trim trailing white space when user presses F5
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

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
  " Set indenting on ruby files
  au FileType ruby,eruby,yaml,cucumber set sw=2 sts=2 et
  au VimEnter * Rvm use default
endif
