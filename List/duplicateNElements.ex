# Duplicate the elements of a list a given number of times.

defmodule DuplicateNElements do

  def duplicateEl(list, n) do
    do_duplicateEl(list,n,n,[])
  end

  defp do_duplicateEl([], _ , _ , x) do
    x
  end

  defp do_duplicateEl([h|t], n, acc, dupl) when acc<=1 do
    do_duplicateEl(t, n, n, dupl++[h])
  end

  defp do_duplicateEl([h|t], n, acc, dupl) do
    do_duplicateEl([h|t], n, acc-1, dupl++[h])
  end

end
