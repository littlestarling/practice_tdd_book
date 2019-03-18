# frozen_string_literal: true
class Money
  attr_accessor :amount
  attr_accessor :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def plus(addend)
    Money.new(amount + addend.amount, currency)
  end
  alias :+ :plus

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def equals(money)
    self.currency == money.currency && @amount == money.amount
  end

  def reduce(to)
    self
  end

  def self.dollar(amount)
    Money.new(amount, 'USD')
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
