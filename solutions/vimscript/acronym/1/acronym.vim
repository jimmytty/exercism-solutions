"
" Convert a phrase into an uppercased acronym formed from
" the initial letter of each word, ignoring leading underscores
"
" Examples:
"
"   :echo Abbreviate('First In, First Out')
"   FIFO
"
"   :echo Abbreviate('The Road _Not_ Taken')
"   TRNT
"
function! Abbreviate(phrase) abort
  let string = copy(a:phrase)
  let string = substitute(string, '\(\a\)-\(\a\)', '\1 \2', 'g')
  let string = substitute(string, ' - ', ' ', 'g')
  let string = substitute(string, '_', '', 'g')
  let words = split(string, ' ')
  let abr = []
  for word in words
    let c = word[0]
    call add(abr, c)
  endfor
  let acronym = join(abr, '')
  let acronym = acronym->toupper()
  return acronym
endfunction
