""
"" Format a message to another person as 'One for <name>, one for me.'
""
"" Example:
""
"" :echo TwoFer('')
"" One for you, one for me.
""
"" :echo TwoFer('Alice')
"" One for Alice, one for me.
""
function! TwoFer(name) abort
  return printf('One for %s, one for me.', (a:name == '' ? 'you' : a:name))
endfunction
