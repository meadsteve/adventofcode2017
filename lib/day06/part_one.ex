defmodule Day06.PartOne do
  @moduledoc false
  @file_path "lib/day06/input.txt"

  def run do
    @file_path
    |> File.read!
    |> String.trim
    |> String.split("\t")
    |> Enum.map(&String.to_integer/1)
    |> indexed_list
    |> repeats_in
  end

  def largest_position(indexed_list) do
    {i, _} = Enum.max_by(indexed_list, fn {_ ,y} -> y end)
    i
  end

  def spread(list) do
    index = largest_position(list)
    size = Enum.count(list)
    {to_spread, list} = Map.get_and_update!(list, index, fn x -> {x, 0} end)
    result = Enum.reduce(1..to_spread, list, fn(x, list) ->
      Map.update!(list, rem(index + x, size), &(&1 + 1))
    end)
    {result, moves_made: to_spread}
  end

  def repeats_in(list), do: repeats_in(list, MapSet.new(), 0)
  def repeats_in(list, old_patterns, moves_made) do
    patterns = MapSet.put(old_patterns, list)
    {new_list, moves_made: new_moves} = spread(list)
    if MapSet.member?(patterns, new_list) do
      {Enum.count(patterns), moves_made: moves_made}
    else
      repeats_in(new_list, patterns, moves_made + new_moves)
    end
  end

  def indexed_list(list) when is_list(list), do: Adventofcode2017.indexed_list(list)
  def indexed_list(list) do
    list
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
    |> indexed_list
  end

  def list_to_string(list) do
    list
    |> Stream.map(fn {_, n} -> n end)
    |> Enum.join(" ")
  end

end
