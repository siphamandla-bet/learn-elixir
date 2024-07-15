defmodule Stats.CentralTendency.Mean do
  alias Stats.{Errors, Validators}

  @spec population_mean(any()) :: float() | {:error, <<_::136>>}
  def population_mean([]), do: Errors.invalid_data_types()

  def population_mean(nums) when is_list(nums) do
    nums
    |> Validators.validate_num_list()
    |> calc_population_mean()
  end

  def population_mean(_), do: Errors.invalid_data_types()

  @spec sample_mean(any()) :: float() | {:error, <<_::136>>}
  def sample_mean(nums), do: population_mean(nums)

  @spec calc_population_mean({false, any()} | {true, any()}) :: float() | {:error, <<_::136>>}
  def calc_population_mean({false, _}), do: Errors.invalid_data_types()

  def calc_population_mean({true, nums}) do
    nums
    |> Enum.sum()
    |> mean(Enum.count(nums))
  end

  @spec mean(number(), number()) :: float()
  def mean(sigma, count), do: sigma / count
end
