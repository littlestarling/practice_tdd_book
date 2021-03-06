# frozen_string_literal: true
require 'rspec'
require 'spec_helper'
Dir[File.dirname(__FILE__) + '/../app/*.rb'].each { |file| require file }

RSpec.describe 'Money' do
  describe '#multiplication' do
    it do
      five = Money.dollar(5)
      expect(five.times(2)).to eq Money.dollar(10)
      expect(five.times(3)).to eq Money.dollar(15)
    end
  end

  describe '#equality' do
    it 'equals comparing value objects' do
      expect(Money.dollar(5).equals(Money.dollar(5))).to be_truthy
      expect(Money.dollar(5).equals(Money.dollar(6))).to be_falsy
      expect(Money.dollar(5).equals(Money.franc(5))).to be_falsy
    end
  end

  describe 'currency' do
    it 'returns currency unit string' do
      expect(Money.dollar(1).currency).to eq 'USD'
      expect(Money.franc(1).currency).to eq 'CHF'
    end
  end

  describe 'addition' do
    it 'returns simple added amount' do
      five = Money.dollar(5)
      sum = five.plus(five)
      bank = Bank.new
      reduced = bank.reduce(sum, 'USD')
      expect(reduced).to eq(Money.dollar(10))
    end
  end

  describe 'reduce' do
    it 'returns 1 dollar' do
      bank = Bank.new
      result = bank.reduce(Money.dollar(1), 'USD')
      expect(result).to eq(Money.dollar(1))
    end
  end
end
