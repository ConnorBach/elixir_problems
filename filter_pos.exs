defmodule Solution do
    def solve(l) do
        #l = [nil] ++ l
        Enum.drop_every(l, 2)
    end 
end

data = IO.read(:stdio, :all)
{_, data} = List.pop_at(String.split(data,"\n"), -1)
list = Enum.map(data, fn cur ->
    {curInt, _} = Integer.parse(cur)
    curInt
end)
ans = Solution.solve(list)
Enum.each(ans, fn cur -> IO.puts(cur) end)