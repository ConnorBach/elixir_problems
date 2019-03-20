defmodule Solution do
    def solve(n, l) do
        Enum.filter(l, fn x -> x < n end)
    end 
end

{limit, _} = Integer.parse(IO.gets(""))
data = IO.read(:stdio, :all)
{_, data} = List.pop_at(String.split(data, "\n"), -1)
list = Enum.map(data, fn cur -> 
    {num, _} = Integer.parse(cur) 
    num
    end)
ans = Solution.solve(limit, list)
Enum.each(ans, fn cur -> IO.puts(cur) end)