# frozen_string_literal: true
require_relative 'money'
class Franc < Money

  def initialize(amount, currency)
    @currency = 'CHF'
    super(amount)
  end

  def times(multiplier)
    return Money.franc(@amount * multiplier)
  end
end
