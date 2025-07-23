const s:color_list = [
  \ 'black', 'brown', 'red', 'orange', 'yellow',
  \ 'green', 'blue', 'violet', 'grey', 'white',
  \ ]

"
" Returns the resistance value represented by the first two color strings in the passed list
"
" Example:
"
"   :echo Value(['black', 'brown'])
"   1
"
"   :echo Value(['brown', 'black'])
"   10
"
"   :echo Value(['green', 'brown'])
"   51
"
"   :echo Value(['green', 'brown', 'orange'])
"   51
"
function! Value(colors) abort
  let first  = index(s:color_list, a:colors[0])
  let second = index(s:color_list, a:colors[1])
  return first * 10 + second
endfunction
