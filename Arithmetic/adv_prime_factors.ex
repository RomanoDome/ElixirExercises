# Determine the prime factors of a given positive integer with their multiplicity.
#AdvPrimeFactors.add_cardinality([[2,1],[3,1],[4,1]],2,[],false)

defmodule AdvPrimeFactors do

  def factors(n) do
    do_factors(n, 2, [])
  end

  defp do_factors(n, i, list) when n>1 do
    if is_prime(i) == true and rem(n, i) == 0 do
      do_factors(div(n,i), i, add_cardinality(list, i, [], false))
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

  def add_cardinality([[h|t]|tail], i, list, check) do
    #IO.inspect list, charlists: :as_lists
    if h == i do
      newlist = do_add_cardinality([h|t], [h|t], i)
      add_cardinality(tail, i, list++[newlist], true)
    else
      add_cardinality(tail, i, list ++ [[h|t]], check)
    end
  end

  def add_cardinality([], i, list, false) do
    list ++ [[i, 1]]
  end
  
  def add_cardinality([], i, list, true) do
    list 
  end

  defp do_add_cardinality([head|tail], [h|t], i) do
    if tail == [] do
      [h]++[head+1]
    else
      do_add_cardinality(tail, [h|t], i)
    end
  end

end
