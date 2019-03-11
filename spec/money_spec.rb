# frozen_string_literal: true
require 'rspec'
require 'spec_helper'
Dir[File.dirname(__FILE__) + '/../app/*.rb'].each { |file| require file }

RSpec.describe 'Dollar' do
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
      expect(Money.franc(5).equals(Money.franc(5))).to be_truthy
      expect(Money.franc(5).equals(Money.franc(6))).to be_falsy
      expect(Money.dollar(5).equals(Money.franc(5))).to be_falsy
    end
  end
end

RSpec.describe 'Franc' do
  describe '#multiplication' do
    it do
      five = Money.franc(5)
      expect(five.times(2)).to eql Money.franc(10)
      expect(five.times(3)).to eql Money.franc(15)
    end
  end
end

RSpec.describe 'Currency' do
  it 'returns currency unit string' do
    expect(Money.dollar(1).currency).to eq 'USD'
    expect(Money.franc(1).currency).to eq 'CHF'
  end

  it 'equals on comparing currency from between different classes' do
    expect(Money.new(10, 'CHF').equals(Franc.new(10, 'CHF'))).to be_truthy
  end
end
