# frozen_string_literal: true
require_relative 'money'
class Franc < Money
  def times(multiplier)
    return Franc.new(@amount * multiplier)
  end

  def currency
    'CHF'
  end
end
