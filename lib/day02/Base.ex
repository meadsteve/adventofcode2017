defmodule Day02.Base do
  @moduledoc false
  @file_path "lib/day02/input.txt"

  def read_parsed_file do
    @file_path
    |> File.read!
    |> parse
  end

  def checksum(grid, row_function) do
    grid
    |> Stream.map(row_function)
    |> Enum.sum
  end

  def parse(input_string) do
    input_string
    |> String.trim
    |> String.split("\n")
    |> Enum.map(&(String.split(&1, "\t")))
    |> Enum.map(&strings_to_integers/1)
  end

  defp strings_to_integers(strings) do
    Enum.map(strings, &String.to_integer/1)
  end


end
