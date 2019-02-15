# frozen_string_literal: true
require 'rspec'
require 'spec_helper'
Dir[File.dirname(__FILE__) + '/../app/*.rb'].each { |file| require file }

RSpec.describe 'Dollar' do
  describe '#multiplication' do
    it do
      five = Dollar.new(5)
      expect(five.times(2)).to eq Dollar.new(10)
      expect(five.times(3)).to eq Dollar.new(15)
    end
  end

  describe '#equality' do
    it 'equals comparing value objects' do
      expect(Dollar.new(5).equals(Dollar.new(5))).to be_truthy
      expect(Dollar.new(5).equals(Dollar.new(6))).to be_falsy
      expect(Franc.new(5).equals(Franc.new(5))).to be_truthy
      expect(Franc.new(5).equals(Franc.new(6))).to be_falsy
      expect(Dollar.new(5).equals(Franc.new(5))).to be_falsy
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
