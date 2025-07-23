"
" Reverses the passed test
"
" Examples:
"
"   :echo Reverse('Exercism')
"   msicrexE
"
function! Reverse(text) abort
  return reverse(copy(a:text))
endfunction
