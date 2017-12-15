defmodule Day01.PartTwoTest do
    use ExUnit.Case
    alias Day01.PartTwo
    doctest PartTwo

    test "1212 sums to 6 - All the elements match" do
      assert PartTwo.sum("1212") == 6
    end

    test "1221 produces 0 " do
      assert PartTwo.sum("1221") == 0
    end

end
