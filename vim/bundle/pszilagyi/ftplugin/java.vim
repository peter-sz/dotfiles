"ctage -f ~/.tags/java -R ~/myprojects/src $JAVA_HOME/src
"set tags=~/.tags/java  	"allows jumping to a tag
"set complete=.,w,b,u,t,i	"enables autocomplete 
set foldmethod=indent		"folding
set sts=4 sw=4 et

" jump to errors
" :make	compile prog
" :cn	jump to next err
" :cl	bring up list of errors
" :cc	show compiler message for current error


if filereadable( getcwd() . '/build.xml') 
	"ANT
	"setl makeprg=$HOME/.vim/vimAnt
	'setl errorformat=\ %#[javac]\ %#%f:%l:%c:%*\\d:%*\\d:\ %t%[%^:]%#:%m,%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
	setl errorformat=%Z%f:%l:\ %m,%A%p^,%-G%*[^sl]%.%#
	setl makeprg=javac\ %\ 2>&1

else
	"JAVAC
	"setl errorformat=%Z%f:%l:\ %m,%A%p^,%-G%*[^sl]%.%#
	setl makeprg=javac\ %\ 2>&1 
endif

nnoremap <Leader>rr :make <CR>  :!java %:t:r <CR>

abbrev SP  System.out.println(\|TXT\|);

