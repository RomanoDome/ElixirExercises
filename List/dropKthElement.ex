# Drop every K'th element from a list.

defmodule DropKthElement do
  def dropEl(list, n) do
    do_dropEl(list,n,[])
  end

  defp do_dropEl([], _, dropped) do
    dropped
  end

  defp do_dropEl([head | tail], n, dropped) when n==1 do
    do_dropEl(tail, n-1, dropped)
  end

  defp do_dropEl([head | tail], n, dropped) do
    do_dropEl(tail, n-1, dropped++[head])
  end

end
