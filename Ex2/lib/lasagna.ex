defmodule Lasagna do
  @minutes_needed 40
  @time_to_prepare_layer 2

  def expected_minutes_in_oven(),
    do: @minutes_needed

  def remaining_minutes_in_oven(elapsed_minutes),
    do: @minutes_needed - elapsed_minutes

  def preparation_time_in_minutes(layers),
    do: layers * @time_to_prepare_layer

  def total_time_in_minutes(layers, elapsed_minutes),
    do: preparation_time_in_minutes(layers) + elapsed_minutes

  def alarm(), do: "Ding!"
end
