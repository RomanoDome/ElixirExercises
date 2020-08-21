# Find the K'th element of a list (the first element in the list is number 1).

defmodule KthElement do
  def kthEl([head | tail], n) when n<=1 do
    IO.puts head
  end

  def kthEl([head | tail], n) do
    kthEl(tail, n-1)
  end
end

IO.puts KthElement.kthEl([1, 2, 3, 4, 5], 1)
