# Determine whether two positive integer numbers are coprime.

defmodule Totient do

  def totient(n) when n>1 do
    do_totient(n, 1, 0)
  end

  def totient(n) do #special case for n = 1
    1
  end

  defp do_totient(n, i, acc) when i<n do
    if gcd(n,i) == 1 do
      do_totient(n, i+1, acc+1)
    else
      do_totient(n, i+1, acc)
    end
  end

  defp do_totient(n, i, acc) do
    acc
  end

  defp gcd(x, 0) do
      x
  end

  defp gcd(x, y) do
    gcd(y, rem(x,y))
  end

end
