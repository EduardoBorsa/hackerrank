defmodule ListReplication do
  def solution(number, list) do
    for x <- list do
      1..number |> Enum.map(fn _ -> x end)
    end
    |> List.flatten()
  end
end

input =
  IO.read(:stdio, :all)
  |> String.trim()
  |> String.split("\n")
  |> Enum.map(fn x -> Integer.parse(x) |> elem(0) end)

[n | elements] = input

ListReplication.solution(n, elements)
|> Enum.each(fn x -> IO.puts("#{x}") end)

# HOW TO RUN 
# mix run scripts/list_replication.exs <<< "2
# 2
# 3
# 4"
