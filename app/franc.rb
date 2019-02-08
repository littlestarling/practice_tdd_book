# frozen_string_literal: true
class Franc
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    return Franc.new(@amount * multiplier)
  end

  def equals(obj)
    @amount == obj.amount
  end

  # NOTE: 同値性比較する機能を提供する
  def eql?(obj)
    if obj.is_a?(Franc)
      @amount.eql?(obj.amount)
    else
      false
    end
  end
end
