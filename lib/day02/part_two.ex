defmodule Day02.PartTwo do
  @moduledoc false

  require Integer

  def run do
    Day02.Base.read_parsed_file()
    |> checksum
  end

  def checksum(grid), do: Day02.Base.checksum(grid, &even_division/1)

  def even_division(row) do
    [result] = row
    |> all_divisions
    |> Enum.filter(&is_whole_number/1)

    round(result)
  end

  defp all_divisions(list), do: all_divisions(list, [])
  defp all_divisions([number | remaining], working_result) do
    new_results_a = Enum.map(remaining, &(number / &1))
    new_results_b = Enum.map(remaining, &(&1 / number))
    all_divisions(remaining, [new_results_a , new_results_b | working_result])
  end

  defp all_divisions([], working_result), do: Enum.flat_map(working_result, &(&1))

  defp is_whole_number(number) do
    number == Float.floor(number)
  end

end
