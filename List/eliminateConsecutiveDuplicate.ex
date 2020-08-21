# Eliminate consecutive duplicates of list elements.

defmodule EliminateConsecutiveDuplicate do

  def deleteDuplicate(list) do
    do_deleteDuplicate(list,[])
  end

  defp do_deleteDuplicate([], x) do
    x
  end

  defp do_deleteDuplicate([h|t], []) do
    do_deleteDuplicate(t, [h])
  end

  defp do_deleteDuplicate([h|t], nodupl) do
    if kthEl(nodupl,length(nodupl))==h do
      do_deleteDuplicate(t, nodupl)
    else
      do_deleteDuplicate(t, nodupl++[h])
    end
  end

  def kthEl([], n) do
    nil
  end

  def kthEl([head | tail], n) when n<=1 do
    head
  end

  def kthEl([head | tail], n) do
    kthEl(tail, n-1)
  end

end
