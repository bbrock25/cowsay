defmodule CowsayTest do
  use ExUnit.Case

  test "Cowsay returns a string containing a thought"  do
    assert ( Cowsay.say("thought") |> String.contains?("thought"))
  end

  test "Cowsay print outputs to standard IO" do
    assert :ok == Cowsay.print("I'm a tested cow.")
  end
end
