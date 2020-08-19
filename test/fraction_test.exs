defmodule FractionTest do
  use ExUnit.Case
  doctest Fraction

  describe "fraction" do
    setup do
      :ok
    end

    test "¼ + ½ = 0.75", _context do
      fraction =
        Fraction.add(Fraction.new(1, 2), Fraction.new(1, 4))
        |> Fraction.value()

      assert fraction == 0.75
    end
  end
end
