defmodule Day05.PartOneTest do
    use ExUnit.Case
    import Day05.PartOne


    test "Single jump of zero increments but stays still" do
      start    = {indexed_list([0, 3, 0, 1, -3]), 0, 0}
      expected = {indexed_list([1, 3, 0, 1, -3]), 0, 1}
      assert jump(start) == expected
    end

    test "Jump around returns the number of steps needed to escape" do
      steps = [0, 3, 0, 1, -3]
      assert jump_around(steps) == {:end, 5}
    end
end
