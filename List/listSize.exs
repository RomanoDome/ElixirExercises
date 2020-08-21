# Find the number of elements of a list.

defmodule ListSize do
  def listSize([], n) do
    IO.puts n
  end

  def listSize([head | tail], n) do
    listSize(tail, n+1)
  end
end

IO.puts ListSize.listSize([1, 2, 3, 4, 5, 6, 7], 0)
