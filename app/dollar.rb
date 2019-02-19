# frozen_string_literal: true
require_relative 'money'
class Dollar < Money
  def times(multiplier)
    return Money.dollar(@amount * multiplier)
  end
end
