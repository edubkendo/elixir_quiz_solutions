defmodule RunLengthEncodingTest do
  use ExUnit.Case
  import RunLengthEncoding
  doctest RunLengthEncoding

  test "encodes" do
    assert encode("A") == "1A"
    assert encode("AA") == "2A"
    assert encode("JJJTTWPPMMMMYYYYYYYYYVVVVVV") == "3J2T1W2P4M9Y6V"
  end
end
