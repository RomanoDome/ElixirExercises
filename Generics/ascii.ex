# Write a function that returns true if a single-quoted string contains onlyprintable ASCII characters (space through tilde).

defmodule Ascii do
  def printable_ascii(sqs) do
    Enum.all?(sqs, fn ch -> ch in ?..?~​ end)
  end
end

