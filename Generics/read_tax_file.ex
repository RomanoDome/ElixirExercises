# Read the tax file and parse it (Doesn't work)

defmodule Tax do
  def read() do
    file = File.open!("tax_file.txt")
    headers = read_headers(IO.read(file, :line))
    values = read_values(file, [])
  end

  defp read_headers(line) when line != :eof do
    line
    |>String.replace("\n", "")
    |>String.split(",")
    |>Enum.map(fn x -> :erlang.binary_to_atom(x) end)
  end

  def read_values(line) do
    if line == :eof do
      IO.puts "fine"
    else
       IO.puts "ciao"
    end
    #line
    #|>String.replace("\n", "")
    #|>String.split(",")
    #|>Enum.map(fn x -> convert(x) end)
  end

  defp convert(x) do
    cond do
      Regex.match?(~r{^\d+$}, x) -> :erlang.binary_to_integer(x)
      Regex.match?(~r{^\d+\.\d+$}, x) -> :erlang.binary_to_float(x)
      << ?: :: utf8, name :: binary >> = x -> :erlang.binary_to_atom(name)
      true -> x
    end
  end

  defp read_values(file, list) do
    row = read_values(IO.read(file, :line))
    read_values(file, list++[row])
  end
end


