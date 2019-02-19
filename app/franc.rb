# frozen_string_literal: true
require_relative 'money'
class Franc < Money
  def times(multiplier)
    return Money.franc(@amount * multiplier)
  end
end
