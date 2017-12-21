defmodule Day04.PartOneTest do
    use ExUnit.Case
    alias Day04.PartOne
    doctest PartOne

    test "aa bb cc dd ee is valid" do
      assert PartOne.valid?("aa bb cc dd ee")
    end

    test "aa bb cc dd aa is invalid" do
      refute PartOne.valid?("aa bb cc dd aa")
    end

end
