# Write a function that takes three arguments. If the first two are zero, return“FizzBuzz”. If the first is zero, return “Fizz”. If the second is zero return “Buzz”.Otherwise return the third argument.

defmodule FizzBuzz do

  def fun(a, b, c) do
    do_fun(a, b, c)
  end

  defp do_fun(0, 0, _) do
    IO.puts "FizzBuzz"
  end

  defp do_fun(0, b, _) when b != 0 do
    IO.puts "Fizz"
  end

  defp do_fun(a, 0, _) when a != 0 do
    IO.puts "Buzz"
  end

  defp do_fun(a, b, c) when a != 0 and b != 0 do
    c
  end

end
