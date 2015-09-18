defmodule Cowsay do
  def say(thought) do
    Cowsay.Parse.bubble(thought) <> Cowsay.Cows.cow
  end

  def print(thought) do
    say(thought) |> IO.puts
  end
end
