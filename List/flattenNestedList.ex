# Flatten a nested list structure.

defmodule FlattenNestedList do

  def flatten([]), do: []
  def flatten([h|t]), do: flatten(h) ++ flatten(t)
  def flatten(h), do: [h] 

end
