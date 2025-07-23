// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
// #![allow(unused)]

pub fn expected_minutes_in_oven() -> i32 {
    // unimplemented!("return expected minutes in the oven")
    return 40;
}

pub fn remaining_minutes_in_oven(actual_minutes_in_oven: i32) -> i32 {
    // unimplemented!(
    //     "calculate remaining minutes in oven given actual minutes in oven: {}",
    //     actual_minutes_in_oven
    // )
    return expected_minutes_in_oven() - actual_minutes_in_oven;
}

fn preparation_time_per_layer() -> i32 {
    return 2;
}

pub fn preparation_time_in_minutes(number_of_layers: i32) -> i32 {
    // unimplemented!(
    //     "calculate preparation time in minutes for number of layers: {}",
    //     number_of_layers
    // )
    return number_of_layers * preparation_time_per_layer();
}

pub fn elapsed_time_in_minutes(
    number_of_layers: i32,
    actual_minutes_in_oven: i32
) -> i32 {
    // unimplemented!(
    //     "calculate elapsed time in minutes for number of layers {} and actual minutes in oven {}",
    //     number_of_layers,
    //     actual_minutes_in_oven
    // )

    let remaining_time = remaining_minutes_in_oven(actual_minutes_in_oven);
    let preparation_time = preparation_time_in_minutes(number_of_layers);
    return expected_minutes_in_oven() - remaining_time + preparation_time;
}
