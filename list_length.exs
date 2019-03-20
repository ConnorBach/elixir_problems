defmodule Solution do
    def solve(l) do
        Enum.reduce(l, 0, fn _, acc -> acc + 1 end)
    end 
end

data = IO.read(:stdio, :all)
data = String.split(data, "\n")
list = Enum.map(data, fn x -> 
    {curX, _} = Integer.parse(x)
    curX
    end)

IO.inspect Solution.solve(list)