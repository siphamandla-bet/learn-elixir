defmodule Tutorials.Lists do
  @moduledoc """
  Function Summary:

  1. sum

  """
  @doc """
    Retr=runs the sum of numbers
  """

  @spec sum(list(number())) :: number()
  def sum(nums), do: sum_tail_rec(nums)

  @spec sum_simple([number()]) :: number()
  def sum_simple([]), do: 0

  def sum_simple([h | t]), do: h + sum_simple(t)

  @spec sum_tail_rec([number()], any()) :: any()
  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc
  def sum_tail_rec([h | t], acc), do: sum_tail_rec(t, acc + h)


  @spec reverse(list(), any()) :: any()
  def reverse(elements, acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h | t], acc), do: reverse(t, [h | acc])

  @spec map(list(), any(), any()) :: any()
  def map(elements, func, acc \\ [])
  def map([], _, acc), do: acc
  def map([h|t], func, acc), do: map(t, func, [func.(h) | acc])

  def concat(list1, list2)
  def concat([], list2), do: list2
  def concat([h | t], list2), do: concat(t, [h|list2])
end
