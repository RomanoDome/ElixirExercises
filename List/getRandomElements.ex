# Extract a given number of randomly selected elements from a list.

defmodule GetRandomElements do

  def getRanEl(list, n) do
    do_getRanEl(list, n, [])
  end

  defp do_getRanEl(_, 0, rlist) do
    rlist
  end

  defp do_getRanEl(list, n, rlist) do
    random_number = :rand.uniform(length(list))
    IO.puts random_number
    do_getRanEl(list, n-1, rlist++[kthEl(list, random_number)])
  end

  defp kthEl([head | tail], n) when n<=1 do
    head
  end

  defp kthEl([head | tail], n) do
    kthEl(tail, n-1)
  end

end
