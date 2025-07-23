defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    spot = x * x + y * y
    cond do
      spot <=   1 -> 10
      spot <=  25 ->  5
      spot <= 100 ->  1
      true        ->  0
    end
  end
end
