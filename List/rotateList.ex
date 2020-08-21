# Rotate a list N places to the left.

defmodule RotateList do

  def rotate(list, n) do
    do_rotate(list, n, [])
  end

  defp do_rotate([], _, rotated) do
    rotated
  end

  defp do_rotate(list, n, rotated) when n==0 do
    do_rotate([], n-1, list++rotated)
  end

  defp do_rotate([h|t], n, rotated) do
    do_rotate(t, n-1, rotated++[h])
  end

end
