defmodule Cowsay.Parse do

  @doc"""
  Takes in the thoughts, returns a bordered version
  """
  def bubble(thoughts) do
    l = thoughts |> wrap |> max_len
    x = String.duplicate("-", l + 4) <> "\n"
    y = Enum.reduce(wrap(thoughts), "", fn(x, acc) ->
       acc <> "| #{x} #{String.duplicate(" ", l - String.length(x))}|\n" end)
    x <> y <> x
  end

  @doc"""
  Wraps strings at a specified length (default 40 chars), returns a list
  of lines (strings)
  """
  def wrap(in_string, wrap_at \\ 40) do
    in_string
      |> String.split
      |> create_line(wrap_at)
  end

  defp max_len(thoughts) do
    thoughts
    |> Enum.max_by(fn(x) -> String.length(x) end)
    |> String.length
  end

  defp create_line([head | []], _) do 
    [head]
  end

  defp create_line([head | tail], wrap_at) do
    [hh | t] = tail
    h = "#{head} #{hh}"
    if h |> String.length > wrap_at do
      [head] ++ create_line(tail, wrap_at)
    else
      create_line([h] ++ t, wrap_at)
    end
  end
end
