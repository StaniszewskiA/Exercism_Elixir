defmodule FreelancerRates do
  @hours_per_shift 8.0
  @billable_days_per_month 22

  def daily_rate(hourly_rate) do
    @hours_per_shift * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100
  end

  def monthly_rate(hourly_rate, discount) do
    discounted_daily = daily_rate(hourly_rate) |> apply_discount(discount)
    monthly = discounted_daily * @billable_days_per_month
    ceil(monthly)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted_daily = daily_rate(hourly_rate) |> apply_discount(discount)
    days = budget / discounted_daily
    round_down_to_one_decimal_place(days)
  end

  defp round_down_to_one_decimal_place(number) do
    truncated = Float.floor(number * 10) / 10
    truncated
  end
end
