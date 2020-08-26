# Capitalize the first char after a "."

defmodule Capitalize do
  def cap(string) do
    #list = String.split(string, ". ")
    #list2 = Enum.map(list, fn x -> String.capitalize(x) end)
    #Enum.join(list2, ". ")

    string
    |>String.split(". ")
    |>Enum.map(fn x -> String.capitalize(x) end)
    |>Enum.join(". ")
  end
end

