# Determine the prime factors of a given positive integer.

defmodule PrimeFactors do

  def factors(n) do
    do_factors(n, 2, [])
  end

  defp do_factors(n, i, list) when n>1 do
    if is_prime(i) == true and rem(n, i) == 0 do
      do_factors(div(n,i), i, list++[i])
    else
      do_factors(n, i+1, list)
    end
  end

  defp do_factors(n, i, list) do
    list
  end

  defp is_prime(n) when n<=3 do
    true
  end

  defp is_prime(n) do
    if rem(n,2)==0 or rem(n,3)==0 do
      false
    else
      do_is_prime(n, 5)
    end
  end

  defp do_is_prime(n, i) when i*i<=n do
    if rem(n,i)==0 or rem(n,i+2)==0 do
     false
    end
    do_is_prime(n, i+6)
  end

  defp do_is_prime(n, i) do
    true
  end

end
