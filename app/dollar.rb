# frozen_string_literal: true
require_relative 'money'
class Dollar < Money
  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end

  def equals(obj)
    @amount == obj.amount
  end

  # NOTE: 同値性比較する機能を提供する
  def eql?(obj)
    if obj.is_a?(Dollar)
      @amount.eql?(obj.amount)
    else
      false
    end
  end
end
