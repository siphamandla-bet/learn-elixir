
function_variable = fn param ->
  param + 1
end




defmodule Secrets do
  def secret_add(num) do
    fn a ->
      a + num
    end
  end

  def secret_subtract(num) do
    fn a ->
      a - num
    end
  end

  def secret_multiply(num) do
    fn a ->
      a * num
    end
  end

  def secret_divide(num) do
    fn a ->
      div(a, num)
    end
  end

  def secret_and(num) do
    fn a ->
      Bitwise.band(num, a)
    end
  end

  def secret_xor(num) do
    fn a ->
      Bitwise.bxor(a, num)
    end
  end

  def secret_combine(multiply, divide) do
    fn a ->
      multiply.(a)
      |> divide.()
    end
  end
end

adder = Secrets.secret_add(2)
IO.puts(adder.(2))

subtractor = Secrets.secret_subtract(2)
IO.puts(subtractor.(3))

multiplier = Secrets.secret_multiply(7)
IO.puts(multiplier.(3))

divider = Secrets.secret_divide(3)
IO.puts(divider.(32))

ander = Secrets.secret_and(1)
IO.puts(ander.(2))

xorer = Secrets.secret_xor(1)
IO.puts(xorer.(3))

multiply = Secrets.secret_multiply(7)
divide = Secrets.secret_divide(3)
combined = Secrets.secret_combine(multiply, divide)

IO.puts(combined.(6))
