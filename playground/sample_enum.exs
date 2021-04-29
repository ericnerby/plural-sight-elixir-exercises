defmodule Sample.Enum do
  import Kernel, except: [length: 1]

  def first(list, val \\ nil)
  def first([head | _], _), do: head
  def first([], val), do: val 

  def map([], _), do: []
  def map([hd | tl], f),
    do: [f.(hd) | map(tl, f)]

  def length([]), do: 0
  def length([_ | tail]),
    do: 1 + length(tail)
end