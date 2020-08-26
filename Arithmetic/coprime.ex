# Determine whether two positive integer numbers are coprime.

defmodule Coprime do

  def are_coprime(n,m) do
    if gcd(n,m) == 1 do
      true
    else
      false
    end
  end

  defp gcd(x, 0) do
      x
  end

  defp gcd(x, y) do
    gcd(y, rem(x,y))
  end

end
