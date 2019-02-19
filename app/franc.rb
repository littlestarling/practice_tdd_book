# frozen_string_literal: true
require_relative 'money'
class Franc < Money

  def initialize(amount)
    @currency = 'CHF'
    super(amount)
  end

  def times(multiplier)
    return Franc.new(@amount * multiplier)
  end
end
