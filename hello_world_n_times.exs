defmodule HelloWorldNTimes do
    def solution(n) do
        (1 .. n) |> Enum.each(fn _ -> IO.puts("Hello World") end)
    end
end

{myInt, _} = Integer.parse(IO.gets("number: "))
HelloWorldNTimes.solution(myInt)
