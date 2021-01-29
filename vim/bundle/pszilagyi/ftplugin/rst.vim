set noet sts=2 sw=2 ai si tw=79
set nospell

nnoremap <Leader>1 yypVr=
nnoremap <Leader>2 yypVr-
nnoremap <Leader>3 yypVr`
nnoremap <Leader>4 yypVr^

nnoremap <Leader>f :Vst fold<CR>
nnoremap <Leader>F :Vst fold1<CR>

" show next actions
"nnoremap <Leader>n :!egrep '^[[:space:]]*-[[:space:]]+@[a-zA-Z]+[[:space:]]*-' % <Bar> sort <Bar> tee '/home/peter/next.txt'<CR>
"nnoremap <Leader>p :!pm-collectprojlist.pl <Bar> tee -a '/home/peter/next.txt'<CR>
" show errands
nnoremap <Leader>e :!egrep '^[[:space:]]*-[[:space:]]+@[e][a-zA-Z]+[[:space:]]*-' %<CR>
" show waiting for
nnoremap <Leader>w :!egrep '[[:space:]]*-[[:space:]]+[Ww][[:space:]]*-' %<CR>
" show all (e, n, w)
"nnoremap <Leader>a :!egrep '[[:space:]]*-[[:space:]]+[0-9WwEe][[:space:]]*-' %<CR>
" collect someday/maybe  
"nnoremap <Leader>s :call ExtractMatchingLines('^\s*-\s\+[Ss]\s*-') % <Bar> sort <CR>  

" For NextActions.txt only - grep next actions and waiting-fors
" next actions
nnoremap <Leader>n :!pcregrep '^\s*-\s+@[a-zA-Z0-9]+' % <Bar> sort <Bar> tee /home/peter/next.txt ; pm-collectprojlist.pl <Bar> tee -a /home/peter/next.txt ; enscript -j -2 -r  -fHelvetica10  /home/peter/next.txt  -o - <Bar> ps2pdf - /home/peter/next.pdf ; /home/peter/bin/pm-gencalendar.sh <CR>

" waiting for
" nnoremap <Leader>w :!pcregrep '^\s*-\s+[wW]\s*-' %<CR>
" both 
"nnoremap <Leader>a :!pcregrep '^\s*-\s+[0-9wW]\s*-' %<CR>
"nnoremap <Leader>x :call ExtractMatchingLines('^\s*-\s\+[Xx]\s*-')<CR>


" consider changing format to 
" - 1 - do critical stuff
" - 2 - do important stuff
" - 3 - do unimportant stuff

Vst fold

