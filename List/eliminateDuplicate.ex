# Eliminate duplicates of list elements.

defmodule EliminateDuplicate do

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
    if Enum.member?(nodupl, h) do
      do_deleteDuplicate(t, nodupl)
    else
      do_deleteDuplicate(t, nodupl++[h])
    end
  end

end
