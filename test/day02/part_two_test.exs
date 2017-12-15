defmodule Day02.PartTwoTest do
    use ExUnit.Case
    alias Day02.PartTwo
    doctest PartTwo

    test "The given example" do
      input = [
        [5,9,2,8],
        [9,4,7,3],
        [3,8,6,5]
      ]
      assert PartTwo.checksum(input) == 9

    end


end
