defmodule Solution do
    def solve([]) do
        []
    end
    def solve(l) do
        {_, tailList} = List.pop_at(l, 0)
        solve(tailList) ++ [List.first(l)]
    end 
end

data = IO.read(:stdio, :all)
data = String.split(data, "\n")
list = Enum.map(data, fn x -> 
    {intX, _} = Integer.parse(x) 
    intX
    end)

ans = Solution.solve(list)
Enum.each(ans, fn x -> IO.puts(x) end)