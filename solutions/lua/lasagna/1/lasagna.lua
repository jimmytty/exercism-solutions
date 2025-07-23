local lasagna = {
    oven_time         = 40,
    minutes_per_layer =  2,
}

function lasagna.remaining_oven_time(actual_minutes_in_oven)
    return lasagna.oven_time - actual_minutes_in_oven
end

function lasagna.preparation_time(number_of_layers)
    return lasagna.minutes_per_layer * number_of_layers
end

function lasagna.elapsed_time(number_of_layers, actual_minutes_in_oven)
    return lasagna.minutes_per_layer * number_of_layers + actual_minutes_in_oven
end

return lasagna
