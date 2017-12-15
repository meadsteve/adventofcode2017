defmodule Day01.PartOne do
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

    [first_number] = Enum.take(numbers, 1)

    numbers
    |>Enum.concat([first_number])
    |> sum_list(0)
  end

  defp sum_list([x, x | rest], acc),do: sum_list([x | rest], acc + x)
  defp sum_list([_x | rest], acc), do: sum_list(rest, acc)
  defp sum_list([], acc), do: acc
end
