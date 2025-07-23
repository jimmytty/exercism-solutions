pub fn production_rate_per_hour(speed: u8) -> f64 {
    let _base_production = 221f64;
    let mut cars_per_hour = speed as f64 * _base_production;
    if speed >= 9 {
        cars_per_hour = cars_per_hour * 77f64 / 100f64;
    } else if speed >= 5 {
        cars_per_hour = cars_per_hour * 90f64 / 100f64;
    }
    return cars_per_hour;
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    let prph = production_rate_per_hour(speed);
    return (prph / 60.0) as u32;
}
