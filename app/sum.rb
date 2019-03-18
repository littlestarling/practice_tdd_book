# frozen_string_literal: true
class Sum
  attr_accessor :augend, :addend

  # augend, addendともにMoneyオブジェクトが来ることを想定している
  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(to)
    amount = augend.amount + addend.amount
    Money.new(amount, to)
  end
end
