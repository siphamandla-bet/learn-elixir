defmodule Case do
  def casing do
    list = [1,2,3]

    case Enum.at(list,2) do
      1 -> "Not it 1"
      3 -> "match"
      _ -> "catch all"
    end
  end

  def host, do: "this" || "that"

end

defmodule Post do
  defstruct(
  id: nil,
    title: "",
    description: "",
    author: ""
  )

end


IO.puts(Case.host())
