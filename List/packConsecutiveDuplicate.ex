# Pack consecutive duplicates of list elements into sublists.

# NON RIUSCITO

defmodule PackConsecutiveDuplicate do

  def packDuplicate(list) do
    do_packDuplicate(list,[])
  end

  defp do_packDuplicate([], x) do
    x
  end

  defp do_packDuplicate([h|t], []) do
    do_packDuplicate(t, [h])
  end

  defp do_packDuplicate([h|t], packdupl) do
    lastValue = kthEl(packdupl,length(packdupl))
    if lastValue==h or lastvalue==[h] do
      do_packDuplicate(t, [packdupl++h])
      #do_packDuplicate(t, [h|packdupl])
    else
      do_packDuplicate(t, packdupl++[[h]])
    end
  end

  def kthEl([], n) do
    nil
  end

  def kthEl([head | tail], n) when n<=1 do
    #IO.inspect head, charlists: :as_lists
    head
  end

  def kthEl([head | tail], n) do
    kthEl(tail, n-1)
  end

end
