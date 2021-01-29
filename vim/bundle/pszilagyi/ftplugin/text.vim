setlocal sts=4
setlocal sw=4
setlocal nosi
setlocal noai 

highlight Folded ctermfg=DarkGreen ctermbg=Black guifg=DarkOliveGreen3 guibg=Black

setlocal foldmethod=indent
setlocal foldenable

"set foldtext=getline(v:foldstart)
setlocal foldtext=MyFoldText()
"set foldnestmax=2
"set foldmethod=expr
"set foldexpr=AtomStyleFolding(v:lnum)

" goal to move a line to top or bottom of a list. can't use marks, as deleting a line deletes the mark. other possiblities:
"-  "nnoremap ,ln :call setreg('z', line('.'))<CR> dd <CR> getreg
nnoremap mt :call setreg('z', line('.'))<CR> dd{p<ESC> :call setpos('.', [0, getreg('z'),1,0])<CR> 
nnoremap mb :call setreg('z', line('.'))<CR> dd}P<ESC> :call setpos('.', [0, getreg('z'),1,0])<CR> 
" https://vi.stackexchange.com/questions/7761/how-to-restore-the-position-of-the-cursor-after-executing-a-normal-command
"https://stackoverflow.com/questions/27448678/in-a-vim-function-how-do-you-set-a-register-to-a-value-that-includes-new-lines
" https://stackoverflow.com/questions/295321/in-vim-is-there-a-way-to-copy-the-current-line-number-into-a-buffer


