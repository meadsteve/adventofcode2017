defmodule Day04.PartTwoTest do
    use ExUnit.Case
    alias Day04.PartTwo
    doctest PartTwo

    test "abcde fghij is valid" do
      assert PartTwo.valid?("abcde fghij")
    end

    test "abcde xyz ecdab is invalid" do
      refute PartTwo.valid?("abcde xyz ecdab")
    end
end
