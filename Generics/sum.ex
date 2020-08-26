defmodule Sum do
    def recursiveSum(n) do
      do_recursiveSum(n, 0)
    end

    defp do_recursiveSum(0, acc) do
      acc
    end
    
    defp do_recursiveSum(n, acc) do
      do_recursiveSum(n-1, acc+n)
    end
end

