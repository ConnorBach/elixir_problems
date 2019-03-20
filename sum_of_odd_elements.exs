defmodule Solution do
    # takes list, returns sum of odd elements
    def solve(l) do
        # filter
        odds = Enum.filter(l, fn x -> rem(x,2) != 0 end) 
        # sum
        Enum.reduce(odds, fn x, acc -> x + acc end)
    end 
end

data = IO.read(:stdio, :all)
data = String.split(data, "\n")
list = Enum.map(data, fn x -> 
    {curX, _} = Integer.parse(x)
    curX
    end)

IO.inspect Solution.solve(list)