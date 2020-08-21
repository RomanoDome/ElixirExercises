# Insert an element at a given position into a list.

defmodule InsertElement do
  def insert(list, el, k) do
    do_insert(list, el, k, [])
  end

  defp do_insert([], _, _, inserted) do
    inserted
  end

  defp do_insert([head | tail], el, k, inserted) when k==1 do
    do_insert(tail, el, k-1, inserted++[el]++[head])
  end

  defp do_insert([head | tail], el, k, inserted) do
    do_insert(tail, el, k-1, inserted++[head])
  end

end
