defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    {key, value} = volume_pair
    cond do
      key === :milliliter  -> {:milliliter, value *   1}
      key === :cup         -> {:milliliter, value * 240}
      key === :fluid_ounce -> {:milliliter, value *  30}
      key === :teaspoon    -> {:milliliter, value *   5}
      key === :tablespoon  -> {:milliliter, value *  15}
      true -> false
    end
  end

  def from_milliliter(volume_pair, unit) do
    value = get_volume(volume_pair)
    cond do
      unit === :milliliter  -> {unit, value /   1}
      unit === :cup         -> {unit, value / 240}
      unit === :fluid_ounce -> {unit, value /  30}
      unit === :teaspoon    -> {unit, value /   5}
      unit === :tablespoon  -> {unit, value /  15}
      true -> false
    end
  end

  def convert(volume_pair, unit) do
    {unit, get_volume(from_milliliter(to_milliliter(volume_pair), unit))}
  end
end
