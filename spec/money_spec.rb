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
      expect(Franc.new(5).equals(Franc.new(5))).to be_truthy
      expect(Franc.new(5).equals(Franc.new(6))).to be_falsy
      expect(Money.dollar(5).equals(Franc.new(5))).to be_falsy
    end
  end
end

RSpec.describe 'Franc' do
  describe '#multiplication' do
    it do
      five = Franc.new(5)
      expect(five.times(2)).to eql Franc.new(10)
      expect(five.times(3)).to eql Franc.new(15)
    end
  end
end
