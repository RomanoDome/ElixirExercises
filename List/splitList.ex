# Split a list into two parts; the length of the first part is given.

defmodule SplitList do

  def split(list, l) do
    do_split(list, l, [], [])
  end

  defp do_split([], _, list1, list2) do
    IO.inspect list1, charlists: :as_lists
    IO.inspect list2, charlists: :as_lists
  end

  defp do_split([h|t], l, list1, list2) when l<=0 do
    do_split(t, l-1, list1, list2++[h])
  end

  defp do_split([h|t], l, list1, list2) do
    do_split(t, l-1, list1++[h], list2)
  end

end
