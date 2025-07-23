function secret_handshake(code)
    binary  = digits(code, base=2, pad=4)
    actions = [ "wink", "double blink", "close your eyes", "jump" ]

    for i = 1:size(actions)[1]
        if binary[i] == 0
            actions[i] = ""
        end
    end

    if size(binary) > size(actions)
        actions = reverse(actions)
    end

    actions = filter(a -> a != "", actions)

    return actions
end
