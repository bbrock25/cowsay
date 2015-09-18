defmodule CowsayParseTest do
  use ExUnit.Case

  test "wraps some simple input" do
    input = "this is some small input"
    bubble = Cowsay.Parse.bubble(input)
    assert(bubble |> String.contains?(input))
    assert(bubble |> String.contains?("----------------"))
  end

  test "wrap will break lines at predfined lenghth" do
    input = "this is some small input"
    assert(
      Cowsay.Parse.wrap(input, 4)
      |> Enum.at(0) == "this"
      )
    assert(
      Cowsay.Parse.wrap(input, 4)
      |> Enum.at(1) == "is"
      )
  end

  test "wrap will default line break at 40" do
    input = "this is some small input"
    assert(
      Cowsay.Parse.wrap(input)
      |> Enum.at(0) == input
      )

  end
end
