scriptencoding utf-8

"
" Returns a string of five characters or less.
" Unicode characters are supported.
"
" Example:
"
"   :echo Truncate('Bärteppich')
"   Bärte
"
function! Truncate(string) abort
  return strcharpart(a:string, 0, 5)
endfunction
