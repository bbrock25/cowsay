defmodule Cowsay.Split do

  @doc"""
  Entrypoint for the module if no wrap_at is defined
  """
  def split(in_string) do
    split(in_string, 40)
  end

  @doc"""
  Entrypoint for the module wrap_at is defined
  """
  def split(in_string, wrap_at) do
    create_line(String.split(in_string), wrap_at)
  end

  @doc"""
  Recursive base case for line split
  """
  defp create_line([head | tail], _) when tail == [] do
    head
  end

  @doc"""
  Splits an array of words on specified line breaks
  """
  defp create_line([head | tail], wrap_at) do
    [hh | t] = tail
    h = "#{head} #{hh}"
    if h |> String.length > wrap_at do
      "#{head}\n#{create_line(tail, wrap_at)}"
    else
      create_line([h] ++ t, wrap_at)
    end
  end

end
