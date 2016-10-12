

set foldmethod=expr
set foldexpr=GetPotionFold(v:lnum)
"set foldmarker={,^$


function! NextNonBlankLine(lnum)
   let numlines = line('$')
   let current = a:lnum + 1

   while current <= numlines
      if getline(current) =~? '\v\S'
         return current
      endif

      let current += 1
   endwhile

   return -2
endfunction


function! IndentLevel(lnum)
   return indent(a:lnum) / &shiftwidth
endfunction

function! IsEmpty(lnum)
   if getline(a:lnum) =~? '\v^\s*$'
      return 1
   else
      return 0
   endif
endfunction 

function! HasContent(lnum)
   if getline(a:lnum) =~? '\v^\s*$'
      return 0
   else
      return 1
   endif
endfunction 

function! GetPotionFold(lnum)
   if (HasContent(a:lnum) && IsEmpty(a:lnum - 1) && IsEmpty(a:lnum - 2))
      return '>1'
   elseif HasContent(a:lnum)
      return '-1'
   else
      return '1'
   endif
endfunction
"   if getline(a:lnum) =~? '\v^\s*$'
"      return '1'
"   else
"      if (getline(a:lnum - 1) =~? '\v^\s*$' && getline(a:lnum - 2) =~? '\v^\s*$')
"         return '>1'
"      else
"         return '1'
"      endif
"
"      else
"         return '1'
"      endif
"
"   endif
"
"   let this_indent = IndentLevel(a:lnum)
"   let next_indent = IndentLevel(NextNonBlankLine(a:lnum))
"
"   if next_indent == this_indent
"      return this_indent
"   elseif next_indent < this_indent
"      return this_indent
"   elseif next_indent > this_indent
"      return '>' . next_indent
"   endif
"endfunction
"
