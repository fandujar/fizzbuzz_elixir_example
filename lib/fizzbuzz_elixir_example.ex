defmodule FizzbuzzElixirExample do
  @moduledoc """
  This is a simple example of FizzBuzz written in elixir.
  """

  @doc """
  FizzBuzz

  ## Examples

      iex> FizzbuzzElixirExample.do()
      ...

  """
    def match?(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: "FizzBuzz"
    def match?(number) when rem(number, 3) == 0, do: "Fizz"
    def match?(number) when rem(number, 5) == 0, do: "Buzz"
    def match?(number), do: number
    def add(number), do: number + 1
    def fizzbuzz?(number, limit) when number == limit, do: nil
    def fizzbuzz?(number, limit) when number < limit do
        IO.puts match?(number)
        fizzbuzz?(add(number), limit)
    end
    def fizzbuzz?(limit) do
        fizzbuzz?(1, limit)
    end
    def start(_type, _args) do
        fizzbuzz?(20)
    end
end
