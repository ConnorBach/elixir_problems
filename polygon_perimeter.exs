defmodule Solution do
    def solve(points) do
        # start with the first and last points
        {x1, y1} = Enum.at(points, 0)
        {x2, y2} = Enum.at(points, -1)
        init = {:math.sqrt(:math.pow(x1 - x2, 2) + :math.pow(y1 - y2, 2)), Enum.at(points, 0)}

        # calculate the rest
        Enum.reduce(points, init, fn point, acc -> 
            {curDist, prevPoint} = acc
            {x1, y1} = point
            {x2, y2} = prevPoint
            dist = :math.sqrt(:math.pow(x1 - x2, 2) + :math.pow(y1 - y2, 2))
            {curDist + dist, point}
        end)
        |> elem(0) 
    end 
end

{numPoints,_} = IO.gets("") |> Integer.parse()
Enum.map(1..numPoints, fn _ -> 
    IO.read(:stdio, :line)
    |> String.split(" ")
    |> Enum.map(fn x -> elem(Integer.parse(x), 0) end)
    |> (fn x -> {Enum.at(x,0), Enum.at(x, 1)} end).()
end)
|> Solution.solve()
|> IO.inspect()