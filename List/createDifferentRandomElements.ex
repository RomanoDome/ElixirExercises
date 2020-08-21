# Draw N different random numbers from the set 1..M.

defmodule CreateDifferentRandomElements do

  def createRanEl(n, m) do
    do_createRanEl(n, m, [])
  end

  defp do_createRanEl(0, _, rlist) do
    rlist
  end

  defp do_createRanEl(n, m, rlist) do
    random_number = :rand.uniform(m)
    IO.puts random_number
    if Enum.member?(rlist, random_number) do
      do_createRanEl(n, m, rlist)
    else
      do_createRanEl(n-1, m, rlist++[random_number])
    end
  end

end
