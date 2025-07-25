const s:colors = [
  \ 'black', 'brown', 'red', 'orange', 'yellow',
  \ 'green', 'blue', 'violet', 'grey', 'white',
  \ ]

"
" Returns the numeric value of the passed-in resistor band color
"
" Example:
"
"   :echo ColorCode('black')
"   0
"
"   :echo ColorCode('green')
"   5
"
"   :echo ColorCode('white')
"   9
"
function! ColorCode(color) abort
  return index(s:colors, a:color)
endfunction

"
" Returns a list of resistor color bands by color name
"
" Example:
"
"   :echo Colors()
"   ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']
"
function! Colors() abort
  return s:colors
endfunction
