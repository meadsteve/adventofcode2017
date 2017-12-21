defmodule Day05.PartTwoTest do
  use ExUnit.Case
  import Day05.PartTwo

  test "Jump around returns the number of steps needed to escape" do
    steps = [0, 3, 0, 1, -3]
    assert jump_around(steps) == {:end, 10}
  end
end
