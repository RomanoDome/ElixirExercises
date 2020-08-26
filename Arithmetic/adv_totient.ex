# Let [[p1,m1],[p2,m2],[p3,m3],...] be the list of prime factors (and their multiplicities) of a given number m. Then phi(m) can be calculated with the following formula: phi(m) = (p1 - 1) * p1**(m1 - 1) * (p2 - 1) * p2**(m2 - 1) * (p3 - 1) * p3**(m3 - 1) * ...

defmodule AdvTotient do

  def factors(n) do
    factorList = do_factors(n, 2, [])
    computePhi(factorList, 1)
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

  defp computePhi([[p|t]|tail], phi) do
    m = getSubTail(t)
    number = (p-1) * :math.pow(p,m-1) |> round #round serve a tenere il valore come int anzichè float
    computePhi(tail, phi*number)
  end

  defp computePhi([], phi) do
    phi
  end

  defp getSubTail([h|t]) do
    h
  end
end
