defmodule Stats.CentralTendency.Median do

  require Integer
  alias Stats.Errors

  def median([]), do: Errors.invalid_data_types()
  def median(nums) when is_list(nums) do
      count_nums = nums |> Enum.count

      nums
      |> Enum.sort
      |> get_median(Integer.is_even(count_nums), count_nums)
  end

  defp get_median(nums, false, count), do: Enum.at(nums, div(count, 2))
  defp get_median(nums, true, count) do
    IO.puts('Integer')
    a = Enum.at(nums, div(count - 1, 2))
    b = Enum.at(nums, div(count, 2))
    (a + b) / 2
  end
end
