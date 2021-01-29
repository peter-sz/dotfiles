" Finds the indent of a line. The indent of a blank line is the indent of the
" first non-blank line above it.
function! FindIndent(line_number, indent_width)
    " Regular expression for a "blank" line
    let regexp_blank = "^\s*$"

    let non_blank_line = a:line_number
    while non_blank_line > 0 && getline(non_blank_line) =~ regexp_blank
        let non_blank_line = non_blank_line - 1
    endwhile
    return  indent(non_blank_line) / a:indent_width
endfunction

" 'foldexpr' for Atom-style indent folding
function! AtomStyleFolding(line_number)
    let indent_width = &shiftwidth

    " Find current indent
    let indent = FindIndent(a:line_number, indent_width)

    " Now find the indent of the next line
    let indent_below = FindIndent(a:line_number + 1, indent_width)

    " Calculate indent level
    if indent_below > indent
        return indent_below
    elseif indent_below < indent
        return "<" . indent
    else
        return indent
    endif
endfunction

function MyFoldText()
	"v:foldstart	line number of first line in the fold
	"v:foldend	line number of last line in the fold
	"v:folddashes	a string that contains dashes to represent the
			foldlevel.
	"v:foldlevel	the foldlevel of the fold

	"let line = getline(v:foldstart)
	"let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
	" return v:folddashes . sub
	let numlines = v:foldend - v:foldstart

"	if v:foldlevel == 1 
"		return 'TOPLEVEL'
"	else
		return getline(v:foldstart) . ' (' . numlines . ' lines)'
"	endif
endfunction



