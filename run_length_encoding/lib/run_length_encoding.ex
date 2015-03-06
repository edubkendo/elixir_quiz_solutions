defmodule RunLengthEncoding do
  def encode(string) do
    encode_aux(String.codepoints(string), [])
  end

  def encode_aux([], result) do
    result
    |> Enum.reverse
    |> Enum.map(fn {char, freq} -> "#{freq}#{char}" end)
    |> to_string
  end

  def encode_aux([h | t], []) do
    encode_aux(t, [{h, 1}])
  end
  def encode_aux([h1 | t1], [{h1, n}|t2]) do
    encode_aux(t1, [{h1, n+1} | t2])
  end
  def encode_aux([h | t], result) do
    encode_aux(t, [{h, 1} | result])
  end
end
