# This module allows measure the execution time of a given function. One exercise asked to compare the execution time between the normal totient and the advanced one. The results are:
# Benchmark.measure(fn -> AdvTotient.factors(10090) end) = 4.35e-4
# Benchmark.measure(fn -> Totient.totient(10090) end) = 0.006159
# This means that the advanced alg for totient is better.

defmodule Benchmark do
  def measure(function) do
    function
    |> :timer.tc
    |> elem(0)
    |> Kernel./(1_000_000)
  end
end
