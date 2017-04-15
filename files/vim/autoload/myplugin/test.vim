function! myplugin#test#foldexpr() " {{{3
   " Folding expression to fold atx style Markdown headings.
   let lastlevel = foldlevel(v:lnum - 1)
   let nextlevel = match(getline(v:lnum), '^/\+\zs')
   "let nextlevel = match(getline(v:lnum), '^/\+\zs')

   "let nextlevel = match(getline(v:lnum), '^/\*%x\+s')
   let retval = '='
   if lastlevel <= 0 && nextlevel >= 1
      let retval = '>' . nextlevel
   elseif nextlevel >= 1
      if lastlevel > nextlevel
         let retval = '<' . nextlevel
      else
         let retval = '>' . nextlevel
      endif
   endif
   " Check whether the change in folding introduced by 'rv'
   " is invalidated because we're inside a code block.
   if retval != '=' && xolox#notes#inside_snippet(v:lnum, 1)
      let retval = '='
   endif
   return retval
endfunction


function! myplugin#test#newfoldexpr()
   let lastlevel = foldlevel(v:lnum - 1)
   let nextlevel = match(getline(v:lnum), '^/\+\zs')

endfunction


