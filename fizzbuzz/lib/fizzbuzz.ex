defmodule Fizzbuzz do
  def up_to(n) do
    1..n
    |> Enum.to_list
    |> Enum.map(&transform/1)
    |> Enum.join(" ")
  end

  def transform(num) when rem(num, 15) == 0 do
    "FizzBuzz"
  end
  def transform(num) when rem(num, 3) == 0 do
    "Fizz"
  end
  def transform(num) when rem(num, 5) == 0 do
    "Buzz"
  end
  def transform(num), do: to_string num
end

