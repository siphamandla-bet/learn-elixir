#Booleans

true_variable = true and true
false_variable = true and false

true_variable = false or true
false_variable = false or false

true_variable = not false
false_variable = not true

defmodule BooleanMod do
  def either_true?(a?, b?) do
  a? or b?
  end
end


defmodule Rules do
  def eat_ghost?(is_power_pullet_active?, is_touching_ghost?) do
    is_power_pullet_active? and is_touching_ghost?
  end

  def score?(is_touching_pullet_active?, is_touching_dot?) do
    is_touching_pullet_active? or is_touching_dot?
  end

  def lose?(is_power_pullet_active?, is_touching_ghost?) do
    is_touching_ghost? and not is_power_pullet_active?
  end

  def win?(are_all_dots_eaten?, has_active_power_pellet, is_toughing_ghost) do
    are_all_dots_eaten? and not lose?(has_active_power_pellet, is_toughing_ghost)
  end
end


IO.puts(Rules.eat_ghost?(false,true))

IO.puts(Rules.score?(false,true))
IO.puts(Rules.lose?(false, true))
IO.puts(Rules.win?(false, true, false))
