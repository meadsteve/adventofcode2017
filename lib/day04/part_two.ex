defmodule Day04.PartTwo do
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

    unique_words = words
    |> normalise_anagrams
    |> Enum.uniq

    Enum.count(words) == Enum.count(unique_words)
  end

  defp normalise_anagrams(words) do
    words
    |> Stream.map(&String.graphemes/1)
    |> Stream.map(&Enum.sort/1)
  end


end
