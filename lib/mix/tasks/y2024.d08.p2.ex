defmodule Elixir.Mix.Tasks.Y2024.D08.P2 do
  use Mix.Task

  import Elixir.Advent.Year2024.Day08

  @shortdoc "Day 08 Part 2"
  def run(args) do
    input = Advent.Input.get!(8, 2024)

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_2: fn -> input |> part2() end}),
      else:
        input
        |> part2()
        |> IO.inspect(label: "Part 2 Results")
  end
end
