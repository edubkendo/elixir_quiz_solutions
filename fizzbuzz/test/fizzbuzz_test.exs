defmodule FizzbuzzTest do
  use ExUnit.Case
  import Fizzbuzz

  doctest Fizzbuzz

  test "divided by 3 is Fizz" do
    assert transform(3) == "Fizz"
    assert transform(6) == "Fizz"
    assert transform(9) == "Fizz"
  end

  test "divided by 5 is Buzz" do
    assert transform(5) == "Buzz"
    assert transform(10) == "Buzz"
  end

  test "divided by 3 and 5 is FizzBuzz" do
    assert transform(15) == "FizzBuzz"
  end

  test "everything else is a number" do
    assert transform(1) == "1"
    assert transform(2) == "2"
    assert transform(4) == "4"
    assert transform(7) == "7"
    assert transform(16) == "16"
  end

  test "stream up to a number, transforming as you go" do
    assert up_to(15) == "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz"
  end
end
