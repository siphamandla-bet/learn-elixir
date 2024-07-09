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


defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(time_in_oven), do: expected_minutes_in_oven() - time_in_oven

  def preparation_time_in_minutes(number_layers) do
    prep_time = 2
    number_layers * prep_time
  end

  def total_time_in_minutes(number_of_layers, time_in_oven) do
    preparation_time_in_minutes(number_of_layers) + time_in_oven
  end

  def alarm(), do: "Ding!"
end

IO.puts("Expected time in oven #{Lasagna.expected_minutes_in_oven()}")

IO.puts("Remaining time in oven #{Lasagna.remaining_minutes_in_oven(30)}")

IO.puts("Remaining time in oven #{Lasagna.preparation_time_in_minutes(2)}")

IO.puts("total time in oven #{Lasagna.total_time_in_minutes(1, 30)}")

IO.puts(Lasagna.alarm())
