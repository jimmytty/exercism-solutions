class Lasagna

  EXPECTED_MINUTES_IN_OVEN = 40

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    return EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven;
  end

  def preparation_time_in_minutes(layers)
    return layers * 2;
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    remaining = remaining_minutes_in_oven(actual_minutes_in_oven);
    preparation = preparation_time_in_minutes(number_of_layers);
    return EXPECTED_MINUTES_IN_OVEN - remaining + preparation;
  end

end
