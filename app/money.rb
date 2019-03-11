# frozen_string_literal: true
class Money
  attr_accessor :amount
  attr_accessor :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def equals(money)
    self.currency == money.currency && @amount == money.amount
  end

  def self.dollar(amount)
    Dollar.new(amount, 'USD')
  end

  def self.franc(amount)
    Money.new(amount, 'CHF')
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
