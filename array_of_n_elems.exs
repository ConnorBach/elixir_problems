defmodule Solution do
    def solve(n) do
        Enum.map((1..n), fn cur -> cur end)
    end
end

{data, _} = Integer.parse(IO.gets(""))
IO.inspect(Solution.solve(data), limit: :infinity)