defmodule Day04.PartOne do
  @moduledoc false
  @file_path "lib/day04/input.txt"

  def run do
    @file_path
    |> File.stream!
    |> Stream.map(&String.trim/1)
    |> Stream.filter(&valid?/1)
    |> Enum.count
  end

  def valid?(password) do
    words = password
    |> String.split(" ")

    unique_words = Enum.uniq(words)

    Enum.count(words) == Enum.count(unique_words)
  end


end
