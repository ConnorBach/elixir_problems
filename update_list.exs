defmodule Solution do
    def solve(l) do
        Enum.map(l, fn x -> abs(x) end)
    end 
end

data = IO.read(:stdio, :all)
data = String.split(data, "\n")
list = Enum.map(data, fn x -> 
    {curX, _} = Integer.parse(x)
    curX
    end)

ans = Solution.solve(list)
Enum.each(ans, fn x -> IO.puts(x) end)