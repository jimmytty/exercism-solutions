"
" Tests whether a number is equal to the sum of its digits,
" each raised to the power of the overall number of digits.
"
function! IsArmstrongNumber(number) abort
  let digits = floor(log10(a:number) + 1)
  let sum = 0
  let n = copy(a:number)
  while n > 0
    let r = n % 10
    let sum = sum + pow(r, digits)
    let n = n / 10
  endwhile
  return a:number == sum
endfunction
