defmodule CowsayCowsTest do
  use ExUnit.Case

  test "standard cow has normal eyes"  do
    Cowsay.Cows.cow
    |> String.contains?("(oo)")
    |> assert
  end

  test "surprised cow has wide eyes"  do
    Cowsay.Cows.surprised
    |> String.contains?("(o o)")
    |> assert
  end

  test "dead cow has dead eyes"  do
    Cowsay.Cows.dead_cow
    |> String.contains?("(xx)")
    |> assert
  end

  test "bull has a male part" do
    Cowsay.Cows.bull
    |> String.contains?("---/-")
    |> assert
  end

end
