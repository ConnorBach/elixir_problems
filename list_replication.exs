defmodule ListReplication do
    def solution(n, l) do
        newList = Enum.map(l, fn x -> List.duplicate(x, n) end)
        List.flatten(newList)
    end
end

{myInt, _} = Integer.parse(IO.gets(""))
data = IO.read(:stdio, :all)
{_, data} = List.pop_at(String.split(data, "\n"), -1)
list = Enum.map(data, fn cur -> 
    {curInt, _} = Integer.parse(cur)
    curInt
    end)
ans = ListReplication.solution(myInt, list)
Enum.each(ans, fn cur -> IO.puts(cur) end)
