defmodule Lasagna do
  @minutes_needed 40
  @time_to_prepare_layer 2

  def expected_minutes_in_oven() do
    @minutes_needed
  end

  def remaining_minutes_in_oven(minutes_in_oven) do
    @minutes_needed - minutes_in_oven
  end

  def preparation_time_in_minutes(layers) do
    @time_to_prepare_layer * layers
  end

  def total_time_in_minutes(layers, minutes_in_oven) do
    @time_to_prepare_layer * layers + minutes_in_oven
  end

  def alarm() do
    "Ding!"
  end
end
