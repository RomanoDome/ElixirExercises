# Reverse a list.
# dato che c'erano dei problemi nel stampare la lista con IO, ho salvato il file in .ex anzichè .exs, l'ho compilato facendo "elixirc reverseList.ex", ho avviato "iex" e ho eseguito "ReverseList.reverse([1,2,3])"

defmodule ReverseList do

  def reverse(list) do
    do_reverse(list, [])
  end

  defp do_reverse([], reversed) do
    reversed
  end

  defp do_reverse([h|t], reversed) do
    do_reverse(t, [h|reversed])
  end

end
