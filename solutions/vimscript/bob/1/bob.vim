"
" This function takes any remark and returns Bob's response.
"
function! Response(remark) abort
  let s = copy(a:remark)
  let s = trim(s)
  let is_yell = match(
    \ substitute(s, '[^[:alpha:]]\+', '', 'g'), '^[A-Z]\+$' )
    \ < 0 ? 0 : 1
  let is_question = match(s, '?$')             < 0 ? 0 : 1
  let is_silence  = match(s, '^[[:space:]]*$') < 0 ? 0 : 1
  let answer      = 'Whatever.'

  if is_silence
    let answer = 'Fine. Be that way!'
  elseif is_question
    if is_yell
      let answer = "Calm down, I know what I'm doing!"
    else
      let answer = 'Sure.'
    endif
  elseif is_yell
    let answer = 'Whoa, chill out!'
  endif
  return answer
endfunction
