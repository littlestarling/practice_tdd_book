# frozen_string_literal: true
class Money
  attr_accessor :amount
  attr_accessor :currency

  def initialize(amount)
    @amount = amount
  end

  def equals(money)
    self.class == money.class && @amount == money.amount
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount, nil)
  end

  # NOTE: 同値性比較する機能を提供する
  def eql?(obj)
    if obj.is_a?(Money)
      @amount.eql?(obj.amount)
    else
      false
    end
  end
  alias :== :eql?
end
