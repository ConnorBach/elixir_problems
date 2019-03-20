defmodule Solution do
    def solve(pairs) do
        relation = Map.new(pairs)
        length(pairs) == map_size(relation)
    end

    def print(true) do
        IO.puts("YES")
    end
    def print(false) do
        IO.puts("NO")
    end
end

{numTests,_} = IO.gets("")
|> Integer.parse()

Enum.each(1..numTests, fn _ -> 
    {numPairs,_} = IO.gets("") |> Integer.parse()
    pairs = Enum.map(1..numPairs, fn _ -> 
        IO.read(:stdio, :line)
        |> String.split(" ")
        |> Enum.map(fn val -> elem(Integer.parse(val), 0) end)
        |> (fn x -> {Enum.at(x, 0), Enum.at(x, 1)} end).()
    end)
    Solution.solve(pairs) |> Solution.print()
end)