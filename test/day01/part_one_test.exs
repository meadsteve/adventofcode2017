defmodule Day01.PartOneTest do
    use ExUnit.Case
    alias Day01.PartOne
    doctest PartOne

    test "1122 sums to 3 (1 + 2)" do
      assert PartOne.sum("1122") == 3
    end

    test "1234 sums to 0 as nothing matches the next" do
      assert PartOne.sum("1234") == 0
    end

    test "1111 sums to 4 (because the last 1 wraps to the first)" do
      assert PartOne.sum("1111") == 4
    end

end
