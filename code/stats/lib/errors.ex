defmodule Stats.Errors do
  @spec invalid_data_types() :: {:error, String.t()}
  def invalid_data_types(), do: {:error, "Invalid data type"}
end
