# Given a range of integers by its lower and upper limit, construct a list of all prime numbers in that range.

defmodule PrimeInRange do
  
  def primeList(min,max) do
    do_primeList(min,max,[])
  end

  defp do_primeList(min,max,list) when min<=max do
    if is_prime(min) do
      do_primeList(min+1,max,list++[min])
    else
      do_primeList(min+1,max,list)
    end
  end

  defp do_primeList(min,max,list) do
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
    else
      do_is_prime(n, i+6)
    end
  end

  defp do_is_prime(n, i) do
    true
  end

end
