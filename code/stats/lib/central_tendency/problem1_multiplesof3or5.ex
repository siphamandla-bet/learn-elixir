defmodule CentralTendency.Problem1Multiplesof3or5 do

  def sum_of_multiples(num) do
    num-1
    |>
    cal_sum_of_multiples()
  end

  defp cal_sum_of_multiples(num, acc \\ 0)
  defp cal_sum_of_multiples(1, acc), do: acc
  defp cal_sum_of_multiples(num, acc) do
    if rem(num, 3) == 0 || rem(num, 5) == 0 do
      IO.puts(num)
      cal_sum_of_multiples(num - 1, acc + num)
    else
      cal_sum_of_multiples(num - 1, acc + 0)
    end
  end

end
