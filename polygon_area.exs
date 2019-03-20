defmodule Solution do
    def area(points) do
        temp = Enum.reduce(points, {0, Enum.at(points, -1)}, fn point, acc -> 
            {area, prevPoint} = acc
            {x1, y1} = point
            {x2, y2} = prevPoint
            curArea = x1 * y2 - x2 * y1
            {curArea + area, point}
        end)
        |> elem(0) 
        abs(0.5 * temp)
    end
end

{numPoints,_} = IO.gets("") |> Integer.parse()
Enum.map(1..numPoints, fn _ -> 
    IO.read(:stdio, :line)
    |> String.split(" ")
    |> Enum.map(fn x -> elem(Integer.parse(x), 0) end)
    |> (fn x -> {Enum.at(x,0), Enum.at(x, 1)} end).()
end)
|> Solution.area()
|> IO.inspect()