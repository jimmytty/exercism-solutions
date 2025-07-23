defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven do 40 end

  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(actual_time_in_oven) do
    expected_minutes_in_oven() - actual_time_in_oven
  end

  # Please define the 'preparation_time_in_minutes/1' function
  @prep_time_per_layer 2
  def preparation_time_in_minutes(number_of_layers) do
    number_of_layers * @prep_time_per_layer
  end

  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(number_of_layers, actual_time_in_oven) do
    expected_minutes_in_oven() -
    remaining_minutes_in_oven(actual_time_in_oven) +
    preparation_time_in_minutes(number_of_layers)
  end

  # Please define the 'alarm/0' function
  def alarm do
    "Ding!"
  end
  
end
