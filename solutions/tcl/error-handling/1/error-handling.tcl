proc custom_error_message {message} {
    throw {CUSTOM ERROR MESSAGE} $message
}

proc handle_error {script} {
    set returnCode [catch { eval $script } result]
    set error ""
    if {[string equal "divide by zero" $result]} {
        set error "division by zero"
    } elseif {[string first ": no such file or directory" $result] != -1} {
        set error "file does not exist"
    } elseif {[string first "invalid command name" $result] != -1} {
        set error "proc does not exist"
    } elseif {[string equal "noerrorhere" $result]} {
        set error "success"
    } 
    return "$error"
}
