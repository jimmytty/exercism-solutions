function! Distance(strand1, strand2)

    let distance = 0

    if ( strlen(a:strand1) != strlen(a:strand2))
       throw "left and right strands must be of equal length"
    else
        for i in range(0, strlen(a:strand1))
            if ( a:strand1[i] != a:strand2[i] )
                let distance += 1
            endif
        endfor
    endif

    return distance

endfunction
