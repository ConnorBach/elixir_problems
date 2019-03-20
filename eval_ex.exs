defmodule Solution do
    def solve(l) do
        Enum.map(l, fn x -> evalEx(x) end)
    end 

    def evalEx(x) do
        Enum.reduce((1..9), 1, fn step, acc -> 
            acc + (:math.pow(x, step) / fac(step))
        end)
    end

    def fac(0), do: 1
    def fac(num) when num > 0 do
        Enum.reduce 1..num, 1, &(&1 * &2)
    end
    def fac(_), do: nil
end

_ = IO.gets("")
data = IO.read(:stdio, :all)
{_, data} = List.pop_at(String.split(data, "\n"), -1)
list = Enum.map(data, fn x -> 
    {curX, _} = Float.parse(x)
    curX
    end)
ans = Solution.solve(list)
Enum.each(ans, fn x -> IO.puts(x) end)