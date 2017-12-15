defmodule Day02.PartOneTest do
    use ExUnit.Case
    alias Day02.PartOne
    doctest PartOne

    test "Parsing works" do
      assert Day02.Base.parse("1\t2\t3\n4\t5\t6") == [
        [1, 2, 3],
        [4, 5, 6]
      ]
    end

    test "Row difference of 5 1 9 5 is 8 (9-1)" do
      assert PartOne.row_difference([5, 1, 9, 5]) == 8
    end

    test "The given example" do
      input = [
        [5,1,9,5],
        [7,5,3],
        [2,4,6,8]
      ]
      assert PartOne.checksum(input) == 18

    end


end
