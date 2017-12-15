defmodule Day01.PartTwo do
  @moduledoc false
  @file_path "lib/day01/input.txt"

  def run do
    @file_path
    |> File.read!
    |> String.trim
    |> sum
  end

  def sum(string) do
    numbers = string
    |> String.graphemes()
    |> Enum.map(&String.to_integer/1)


    number_compliments = numbers
    |> Stream.cycle()
    |> Stream.drop(Enum.count(numbers) / 2)

    numbers
    |> Stream.zip(number_compliments)
    |> Stream.map(&pair_value/1)
    |> Enum.sum
  end

  defp pair_value({x, x}), do: x
  defp pair_value({_x, _y}), do: 0

end
