# Find the last element of a list.

defmodule LastElement do
  def lastEl([head | []]) do
    IO.puts head
  end

  def lastEl([head | tail]) do
    lastEl(tail)
  end
end

IO.puts LastElement.lastEl([1, 2, 3, 4, 5])
