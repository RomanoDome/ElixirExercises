# Extract a slice from a list. Given two indices, I and K, the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included). Start counting the elements with 1

defmodule SliceList do

  def slice(list, i, k) do
    do_slice(list, i, k, [])
  end

  defp do_slice([], _, _, sliced) do
    sliced
  end

  defp do_slice(_, 0, 0, sliced) do
    sliced
  end

  defp do_slice([h|t], i, k, sliced) when i<=1 and k>1 do
    do_slice(t, 0, k-1, sliced++[h])
  end

  defp do_slice([h|t], i, k, sliced) when k==1 do
    do_slice(t, i, 0, sliced++[h])
  end

  defp do_slice([h|t], i, k, sliced) do
    do_slice(t, i-1, k-1, sliced)
  end

end
