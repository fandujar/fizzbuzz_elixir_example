defmodule FizzbuzzElixirExample do

  @moduledoc """
  This is a simple example of FizzBuzz written in elixir.
  
  $ ./fizzbuzz_elixir_example <limit>

  """

  @doc """
  FizzbuzzElixirExample

  ## Examples

      iex> FizzbuzzElixirExample.fizzbuzz?(3)
      1
      2
      Fizz

  """
    def match?(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: "FizzBuzz"
    def match?(number) when rem(number, 3) == 0, do: "Fizz"
    def match?(number) when rem(number, 5) == 0, do: "Buzz"
    def match?(number), do: number
    def add(number), do: number + 1
    def fizzbuzz?(number, limit) when number > limit, do: nil
    def fizzbuzz?(number, limit) when number <= limit do
      IO.puts match?(number)
      fizzbuzz?(add(number), limit)
    end
    def fizzbuzz?(limit) do
      fizzbuzz?(1, limit)
    end
    def main([]) do
      IO.puts(@moduledoc)
    end
    def main(_) do
      # TODO: Convert args to integer
      #{number, _} = args |> String.trim() |> Integer.parse()
      fizzbuzz?(20)
    end
    
end
