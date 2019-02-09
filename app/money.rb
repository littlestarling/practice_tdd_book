# frozen_string_literal: true
class Money
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def equals(money)
    self.class == money.class && @amount == money.amount
  end

  # NOTE: 同値性比較する機能を提供する
  def eql?(obj)
    if obj.is_a?(Money)
      @amount.eql?(obj.amount)
    else
      false
    end
  end
end
