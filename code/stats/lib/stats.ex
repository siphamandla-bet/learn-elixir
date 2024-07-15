defmodule Stats do
  @moduledoc """
  Documentation for `Stats`.
  """

  alias Stats.CentralTendency.Mean

  @doc """
  Hello world.

  ## Examples

      iex> Stats.hello()
      :world

  """
defdelegate population_mean(nums), to: Mean
defdelegate sample_mean(nums), to: Mean

end
