defmodule Solution do
    def solveArea(coefs, expos, limits) do
        limits = Enum.map(limits, fn x -> 1000 * x end)
        range = Enum.map(Enum.at(limits, 0)..Enum.at(limits, 1), fn x -> x / 1000 end)

        Enum.reduce(range, 0, fn x, acc -> 
            acc + (calcFun(coefs, expos, x) * 0.001)
        end)
    end

    def calcFun(coefs, expos, x) do
        funcTerms = Enum.zip(coefs, expos)
        Enum.reduce(funcTerms, 0, fn term, val ->
            val + elem(term, 0) * :math.pow(x, elem(term, 1))
        end)
    end

    def solveVolume(coefs, expos, limits) do
        limits = Enum.map(limits, fn x -> 1000 * x end)
        range = Enum.map(Enum.at(limits, 0)..Enum.at(limits, 1), fn x -> x / 1000 end)
        
        Enum.reduce(range, 0, fn x, acc ->
            acc + (:math.pi * :math.pow(calcFun(coefs, expos, x), 2) * 0.001)
        end)
    end
end

coefs = IO.read(:stdio, :line)
|> String.split(" ")
|> Enum.map(fn x -> elem(Integer.parse(x), 0) end)

expos = IO.read(:stdio, :line)
|> String.split(" ")
|> Enum.map(fn x -> elem(Integer.parse(x), 0) end)

limits = IO.read(:stdio, :line)
|> String.split(" ")
|> Enum.map(fn x -> elem(Integer.parse(x), 0) end)

IO.inspect Solution.solveArea(coefs, expos, limits)
IO.inspect Solution.solveVolume(coefs, expos, limits)