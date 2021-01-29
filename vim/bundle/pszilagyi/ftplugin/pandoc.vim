
let g:pandoc#folding#fdc = 0
let g:pandoc#spell#enabled = 0

" For producing pandoc grid_tables:
" Note: for these settings to work, they need to be in
" ~/.vim/bundle/pszilagyi/after/ftplugin/pandoc.vim
let b:table_mode_corner = '+'
let b:table_mode_corner_corner='+'
let b:table_mode_header_fillchar='='

set foldlevel=0
" indent bulleted paragraphs
set showbreak=\ \ 

nnoremap <Leader>1 ddmx{P`x
nnoremap <Leader>2 ddmx{p`x
nnoremap <Leader>3 ddmx}p`x

vnoremap <Leader>1 dmx{P`x
vnoremap <Leader>2 dmx{p`x
vnoremap <Leader>3 dmx}p`x

nnoremap ,,2 :set foldlevel=1<CR>

nnoremap ,,1 :set foldlevel=0<CR>
nnoremap ,,2 :set foldlevel=1<CR>
nnoremap ,,3 :set foldlevel=2<CR>
nnoremap ,,4 :set foldlevel=3<CR>
nnoremap ,,5 :set foldlevel=4<CR>
nnoremap ,,6 :set foldlevel=5<CR>
