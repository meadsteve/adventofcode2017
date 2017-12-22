defmodule Adventofcode2017 do
  @moduledoc """
  Documentation for Adventofcode2017.
  """

  def indexed_list(list) do
    list
    |> Stream.with_index
    |> Stream.map(fn {x,y} -> {y,x} end)
    |> Enum.into(%{})
  end

end
