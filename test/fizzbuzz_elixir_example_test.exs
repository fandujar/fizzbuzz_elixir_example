defmodule FizzbuzzElixirExampleTest do
  use ExUnit.Case
  doctest FizzbuzzElixirExample

  test "greets the world" do
    assert FizzbuzzElixirExample.hello() == :world
  end
end
