defmodule CowsayCowsTest do
  use ExUnit.Case

  test "standard cow has normal eyes"  do
    assert (Cowsay.Cows.cow |> String.contains?("(oo)"))
  end

  test "surprised cow has wide eyes"  do
    assert (Cowsay.Cows.surprised |> String.contains?("(o o)"))
  end

  test "dead cow has dead eyes"  do
    assert (Cowsay.Cows.dead_cow |> String.contains?("(xx)"))
  end

  test "bull has a male part" do
    assert (Cowsay.Cows.bull |> String.contains?("---/-"))
  end
end
