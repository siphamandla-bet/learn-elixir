defmodule Freelancer do
  def daily_rate(hours) do
    hours * 8
  end

  def apply_discount(price, discont) do
    price - price * (discont/ 100)
  end

end




dis = Freelancer.apply_discount(150,10)
IO.puts(dis)
