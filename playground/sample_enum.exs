defmodule Sample.Enum do
  def first(list, val \\ nil)
  def first([head | _], _), do: head
  def first([], val), do: val 

  def map([], _), do: []
  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end
end