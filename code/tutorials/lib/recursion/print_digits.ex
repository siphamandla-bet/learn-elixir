defmodule Tutorials.Recursion.PrintDigits do
  #Base case
  def upto(0) do
    :ok
  end

  def upto(nums) do
    IO.puts(nums)
    upto(nums - 1)
  end
end
