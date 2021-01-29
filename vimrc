" TODO: remap altJ to 5j , same for k set nocompatible filetype on

set notitle

" Sets autowrite while preserving undo lists
set autowriteall
set hidden
au BufLeave * upd

" vim swap directory
if has("win32unix")
	set directory=~/localdata/vim_swp
elseif has("win32")
	set directory=c:/_localdata/vim_swp
elseif has("unix")
	set directory=~/.vim/vim_swp
else
endif


" vim home dir
if has("win32unix")
	let $VIMHOME = "c:/_LOCALdata/vol/ConfigFiles/vimfiles"
elseif has("win32")
	"let $VIMHOME = "c:/???"
elseif has("unix")
	let $VIMHOME= "$HOME/.vim"
else
endif

" Colors
syntax on
set background=dark

set ruler 


" pathogen 
if has("win32unix")
	execute pathogen#infect('~/localdata/vol/ConfigFiles/vimfiles/bundle/{}')
elseif has("win32")
	execute pathogen#infect('c:/_LOCALdata/vol/ConfigFiles/vimfiles/bundle/{}')
elseif has("unix")
	execute pathogen#infect('~/.vim/bundle/{}')
else
endif



"set background=light

if &background == 'dark'
	"colorscheme default
	colorscheme asmanian2
endif

if &background == 'light'
	colorscheme desert 
endif

" Status line
set laststatus=2
" set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
" set cul		" highlight current line


" Print options
set printoptions=paper:letter,header:1

" Highlight line in insert mode

" settings for .txt files
"au! BufRead,BufNewFile *.txt setfiletype txt.vo_base
"au! BufRead,BufNewFile *.otl  setfiletype vo_base

"list lcs=tab:\|\    

" perl settings
"autocmd BufRead,BufNewFile *.txt set noet sts=4 sw=4 ai si


" texfile settings
autocmd BufRead,BufNewFile *.txt set et sts=4 sw=4 ai

" don't insert comment leader automatically on new line
autocmd BufRead,BufNewFile * set formatoptions-=cro

autocmd FileType python let b:dispatch = 'python3 %'

" rewrap current paragraph
" map <C-q> {gq}


" Easier buffer switching
nnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>

nnoremap gf :e <cfile><CR>


" Set term to xterm under screen
if match($TERM, "screen")!=-1
	  set term=xterm
  endif



"nnoremap <PageUp> :exe "normal \<C-w>k"<CR>
""nnoremap <PageDown> :exe "normal \<C-w>j"<CR>

" Global tab, indent and wrapping behaviours
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set expandtab
" set smartindent " indents for {, outdents for }
"set textwidth=79 " auto-inserts \n's at terminal width
" set autoindent " indent new lines same depth as prev



" Searching 
set incsearch   "incremental search
set hlsearch   " highlight search results, clear w/ :nohlsearch

" save buffer before switching files
set autowrite 



" Abbreviations
" :ab #b /***************************************
" :ab #e <Space>****************************************/
:ab teh the

" Macros 
":map h1 yypVr=o
":map h2 yypVr-o
":map h3 :s/\(.+\)/-\1-/<cr>o


" Handy shortcuts
" 		to list possible keys: :help t_ku
" C-jkhl moves 5 times
"nnoremap <C-j> 5j
"nnoremap <C-k> 5k
"nnoremap <C-h> 5h
"nnoremap <C-l> 5l 
nnoremap <PageUp> :bp<CR>
nnoremap <PageDown> :bn<CR>
" To make <S-arrows> work in an xterm:
"       Give these commands in the xterm:
"                xmodmap -e "keysym Up = Up F13"
"                xmodmap -e "keysym Down = Down F16"
"                xmodmap -e "keysym Left = Left F18"
"                xmodmap -e "keysym Right = Right F19"
"
"        And use these mappings in Vim:
"                :map <t_F3> <S-Up>
"                :map! <t_F3> <S-Up>
"                :map <t_F6> <S-Down>
"                :map! <t_F6> <S-Down>
"                :map <t_F8> <S-Left>
"                :map! <t_F8> <S-Left>
"                :map <t_F9> <S-Right>
"                :map! <t_F9> <S-Right>



"
" automatically give executable permissions if file begins with #! and contains
" '/bin/' in the path
"
"au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod u+x <afile> | fi | fi
"autocmd Filetype pl,pm,perl source ~/.vim/ftplugin/perl.vim

" alternative to esc key
inoremap jj <Esc>

map <S-Down> dd p
map <S-Up> dd <up>P

filetype plugin indent on


set ignorecase " case insensitive by default
set infercase " case inferred by default
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set smartcase " if there are caps, go case-sensitive

set visualbell t_vb=      " Turn off beep and disable visual bell.
au GuiEnter * set t_vb=   " Disable visual bell again when GUI starts.

set path=.,/usr/include,$HOME/Documents,$HOME/Reference

":set printfont=:h8 (# this yields an 8-pt font)
"set printfont=Bitstream\ Vera\ Sans\ Mono\ 12,Fixed\ 12
set printfont=Consolas:h11

":set printoptions=paper:letter,right:1in,left:54pt,numb er:y,wrap:y (# this line set up certain parameters such as margins, paper size, etc.)

if has("win32unix")
	set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,= 
endif


"mediawiki ft
autocmd BufRead,BufNewFile *.mw setfiletype mw
autocmd BufReadPost *.tbl :TableModeEnable

" Easier omnicomplete
" imap <C-space> <C-x><C-o>
" imap <C-@> <C-space>

imap jj <Esc>

set backspace=indent,eol,start

set modeline
set modelines=1


"Syntastic Settings 
" CYGWIN note: leave disabled on cygwin - every save takes 30 sec
let g:syntastic_enable_perl_checker = 0 
let g:syntastic_check_on_open=1
"let g:syntastic_enable_balloons=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_highlighting=0
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
"let g:syntastic_perl_lib_path= 'C:\my32bitperl\perl\lib\'
"let g:syntastic_perl_checkers=['perl']
let g:syntastic_id_checkers=1
"let g:syntastic_python_checkers=['python', 'pyflakes']
"Enable below in case you want the error line highlighted
"highlight SyntasticErrorLine guibg=#6D6968 
"highlight SyntasticWarningLine guibg=#6D6968 
"Sytanstic Error Signs"
"Replace the "&#8594;" below with the unicode right arrow (->) Symbol.
"let g:syntastic_error_symbol="&#8594;&#8594;"
"let g:syntastic_warning_symbol="&#8594;"
"End of Syntastic Settings


if &diff
	" diff mode
	set diffopt+=iwhite
endif

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

nnoremap <Leader>tr :TableModeRealign  <CR> 
nnoremap <Leader>te :TableModeEnable  <CR> 
nnoremap <Leader>td :TableModeDisable  <CR> 

" Compile C# files
au BufNewFile,BufRead *.cs compiler csc 

" Auto change dir to file's cwd
" source: http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h

" make vimdiff ignore all whitespace changes
set diffopt+=iwhite
set diffexpr=DiffW()
function DiffW()
  let opt = ""
   if &diffopt =~ "icase"
     let opt = opt . "-i "
   endif
   if &diffopt =~ "iwhite"
     let opt = opt . "-w " " swapped vim's -b with -w
   endif
   silent execute "!diff -a --binary " . opt .
     \ v:fname_in . " " . v:fname_new .  " > " . v:fname_out
endfunction

" Git keys
nnoremap <Leader>gw :Gwrite <CR>
nnoremap <Leader>gc :Gcommit <CR>
nnoremap <Leader>gs :Gstatus <CR>
nnoremap <Leader>gl :Glog <CR>
nnoremap <Leader>gd :Gdiff <CR>
nnoremap <Leader>gm :Gmove <CR>

nnoremap ,,0 :set foldlevel=0<CR>
nnoremap ,,1 :set foldlevel=1<CR>
nnoremap ,,2 :set foldlevel=2<CR>
nnoremap ,,3 :set foldlevel=3<CR>
nnoremap ,,4 :set foldlevel=4<CR>
nnoremap ,,5 :set foldlevel=5<CR>
nnoremap ,,6 :set foldlevel=6<CR>


" disable csv fold on save
:let g:csv_disable_fdt = 1

au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

source $VIMHOME/bundle/pszilagyi/commonfuncs.vim


" you can specify file-type handlers in"
" ~/.vim/autoload/netrwFileHandlers.vim
let g:netrw_browsex_viewer='-'
.


autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline
"highlight CursorLine ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
"highlight CursorLine gui=underline cterm=underline
"highlight CursorLine ctermfg=black ctermbg=lightcyan cterm=bold guifg=white guibg=yellow gui=bold
"highlight CursorLine ctermfg=white ctermbg=lightblue cterm=bold guifg=white guibg=yellow gui=bold
"highlight CursorLine ctermfg=white ctermbg=darkgray cterm=bold guifg=white guibg=yellow gui=bold
highlight clear CursorLine 
highlight CursorLine cterm=underline guifg=white guibg=yellow gui=bold



" Content handlers to replace non-working gx command
" Open Pdf
nnoremap <leader>op :!pdf-green.sh <cWORD><CR>
" Open image
nnoremap <leader>oi :!image-view.sh <cWORD><CR>
" Open HTML
nnoremap <leader>oh :!w3m <cWORD><CR>


let g:UltiSnipsSnippetDirectories=["vim-snippets"]

" On Windows WSL, have the 'gx' command open files with explorer.exe
let uname = substitute(system('uname'),'\n','','')
if uname == 'Linux'
    let lines = readfile("/proc/version")
    if lines[0] =~ "Microsoft"
	let netrw_browsex_viewer='explorer.exe'
    endif

