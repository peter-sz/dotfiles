"""" ORACLE """"
"map \rt :!sqlplus -S  "USER/PASS@'(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=)(PORT=1521)))(CONNECT_DATA=(SID=SOMESID)))'" @%  <CR>
"nnoremap <Leader>rr :! orasql.pl -o % 2>&1 <Bar> less <CR> 
" add this to get rid of extra prompt "
"map \rr :! echo quit <Bar> sqlplus -S  "USER/PASS@HOST" @%  <CR>

"""" POSTGRES """"
" nnoremap <Leader>rr :! chinook-pg.sh % <CR>
" vnoremap <Leader>rr :!chinook-pg.sh <CR>

"""" ORACLE """"
nnoremap <Leader>rr :! chinook-ora.sh % <CR>
vnoremap <Leader>rr :!chinook-ora.sh <CR>
