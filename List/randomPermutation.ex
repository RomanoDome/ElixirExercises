# Generate a random permutation of the elements of a list.

defmodule RandomPermutation do

  def ranPerm(list) do
    do_ranPerm(list, length(list), [])
  end

  defp do_ranPerm(_, 0, rpermlist) do
    rpermlist
  end

  defp do_ranPerm(list, acc, rpermlist) do
    random_number = :rand.uniform(length(list))
    IO.puts random_number
    if Enum.member?(rpermlist, kthEl(list, random_number)) do
      do_ranPerm(list, acc, rpermlist)
    else
      do_ranPerm(list, acc-1, rpermlist++[kthEl(list, random_number)])
    end
  end

  defp kthEl([head | tail], n) when n<=1 do
    head
  end

  defp kthEl([head | tail], n) do
    kthEl(tail, n-1)
  end

end
