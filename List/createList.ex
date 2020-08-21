# Create a list containing all integers within a given range.

defmodule CreateList do

  def create(i, k) do
    do_create(i, k, 0, [])
  end

  defp do_create(0, 0, _, list) do
    list
  end

  defp do_create(i, k, acc, list) when acc>k do
    do_create(0, 0, acc, list)
  end

  defp do_create(i, k, acc, list) when acc>=i and acc<=k do
    do_create(i, k, acc+1, list++[acc])
  end

  defp do_create(i, k, acc, list) do
    do_create(i, k, acc+1, list)
  end

end
