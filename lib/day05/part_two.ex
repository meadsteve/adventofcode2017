defmodule Day05.PartTwo do
  @moduledoc false
  @file_path "lib/day05/input.txt"


  def run do
    @file_path
    |> File.stream!
    |> Stream.map(&String.trim/1)
    |> Stream.filter(fn x -> x != "" end)
    |> Stream.map(&String.to_integer/1)
    |> jump_around
  end

  def jump({steps, position, jumps}) do
    {jump_amount, new_steps} = Map.get_and_update!(
      steps,
      position,
      fn
        x -> {x, update_instruction(x)}
      end
    )
    {new_steps, position + jump_amount, jumps + 1}
  end

  def jump_around({_steps, _position, jumps} = current) do
    try do
      current
      |> jump
      |> jump_around
    rescue
      KeyError -> {:end, jumps}
    end
  end

  def jump_around(steps), do: jump_around({indexed_list(steps), 0, 0})

  def indexed_list(list), do: Adventofcode2017.indexed_list(list)

  defp update_instruction(x) when x < 3, do: x + 1
  defp update_instruction(x) when x >= 3, do: x - 1

end
