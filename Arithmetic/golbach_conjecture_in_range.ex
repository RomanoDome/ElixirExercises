# Write a predicate to find the two prime numbers that sum up to a given even integer >= 4.

defmodule GolbachConjectureInRange do
  
  def compute(min, max, list) when min<=max do
    if rem(min,2) == 0 do  
      [head|tail] = primeList(2,min) #in Golbach Conjecture the first prime number (1) is not used, this is why primeList start from 2
      compute(min+1,max,list++[min]++[do_compute(min,[head],[head|tail],[head|tail])])
    else
      compute(min+1,max,list)
    end
  end

  def compute(min, max, list) do
    list
  end

  defp do_compute(n, [h|t], [head|tail], [accH|accT]) do
    if h+head == n do
      [h]++[head]
    else
      do_compute(n, [h|t], tail, [accH|accT])
    end 
  end

  defp do_compute(n, _, [], [accH|accT]) do
    do_compute(n, [List.first(accT)], accT, accT) 
  end

  defp do_compute(n, [h|t], [], []) do
    [h|t] 
  end

  defp primeList(min,max) do
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
