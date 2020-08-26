# Determine whether a given integer number is prime.

defmodule Prime do

  def is_prime(n) when n<=3 do
    true
  end

  def is_prime(n) do
    if rem(n,2)==0 or rem(n,3)==0 do
      false
    else
      do_is_prime(n, 5)
    end
  end

  defp do_is_prime(n, i) when i*i<=n do
    if rem(n,i)==0 or rem(n,i+2)==0 do
     false
    else
      do_is_prime(n, i+6)
    end
  end

  defp do_is_prime(n, i) do
    true
  end

end
