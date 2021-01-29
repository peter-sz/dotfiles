set et sts=4 sw=4 ai si 
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

"map \rs :!php -l %<CR>
map \rs :make<CR>

map \rr :!php %<CR>
map \ry :

