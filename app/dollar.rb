# frozen_string_literal: true
require_relative 'money'
class Dollar < Money

  def initialize(amount)
    @currency = 'USD'
    super(amount)
  end

  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end
end
