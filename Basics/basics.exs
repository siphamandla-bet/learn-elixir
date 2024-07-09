defmodule Calculator do
  def add x, y do
    private_add(x, y)
  end

  def subtract x ,y do
    private_subtract(x, y)
  end

  defp private_subtract(x, y), do: x - y

  defp private_add(x, y), do: x + y

end

sum = Calculator.add(2,3)
IO.puts("Sum: #{sum}")

diff = Calculator.subtract(7,3)
IO.puts("Diff:  #{diff}")
