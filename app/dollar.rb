# frozen_string_literal: true
require_relative 'money'
class Dollar < Money
  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end

  def equals(obj)
    @amount == obj.amount
  end
end
