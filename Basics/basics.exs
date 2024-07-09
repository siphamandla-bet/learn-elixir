defmodule Calculator do
  def add x, y do
    x + y
  end

  def subtract x ,y do
    x - y
  end
end

sum = Calculator.add(1,3)
IO.puts("Sum: #{sum}")

diff = Calculator.subtract(5,3)
IO.puts("Diff:  #{diff}")
