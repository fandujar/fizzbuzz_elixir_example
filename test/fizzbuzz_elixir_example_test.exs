defmodule FizzbuzzElixirExampleTest do
  use ExUnit.Case
  doctest FizzbuzzElixirExample

# FIX: test
  test "fizzbuzz 3" do
    assert FizzbuzzElixirExample.fizzbuzz?(3) == "
1
2
Fizz"
  end
end
