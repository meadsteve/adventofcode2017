defmodule Day06.PartOneTest do
    use ExUnit.Case
    import Day06.PartOne


    test "Strings can be turned into indexed lists" do
      assert indexed_list("0 2 7 0") == %{
         0 => 0, 1 => 2, 2 => 7, 3 => 0
      }
    end

    test "indexed lists can be turned into strings" do
      input = indexed_list("0 2 7 0")
      assert list_to_string(input) == "0 2 7 0"
    end

    test "largest number can be found" do
      assert ("0 2 7 0" |> indexed_list |> largest_position) == 2
    end

    test "the largest gets spread out" do
      input = indexed_list("0 2 7 0")
      expected = indexed_list("2 4 1 2")
      assert spread(input) == {expected, moves_made: 7}
    end

    test "0 2 7 0 gets iterated 5 times" do
      input = indexed_list("0 2 7 0")
      {iterations, moves_made: _} = repeats_in(input)
      assert iterations == 5
    end

end
