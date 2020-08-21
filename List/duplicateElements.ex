# Duplicate the elements of a list.

defmodule DuplicateElements do

  def duplicateEl(list) do
    do_duplicateEl(list,[])
  end

  defp do_duplicateEl([], x) do
    x
  end

  defp do_duplicateEl([h|t], dupl) do

    do_duplicateEl(t, dupl++[h]++[h])
  end

end
