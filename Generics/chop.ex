defmodule Chop do
    def guess(n, range=low..high) do
      guess = div(low+high, 2)
      IO.puts "Is it #{guess}?"
      do_guess(n, guess, range)
    end

    defp do_guess(n, n, _) do
      IO.puts "Yes, it's #{n}"
    end

    defp do_guess(n, guess, low..high) when guess<n do
      guess(n, guess+1..high)
    end

    defp do_guess(n, guess, low..high) when guess>n do
      guess(n, low..guess-1)
    end
end

