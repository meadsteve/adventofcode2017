defmodule Day02.PartOne do
  @moduledoc false

  def run do
    Day02.Base.read_parsed_file()
    |> checksum
  end

  def checksum(grid), do: Day02.Base.checksum(grid, &row_difference/1)

  def row_difference(row) do
    {min, max} = Enum.min_max(row)
    max - min
  end

end
