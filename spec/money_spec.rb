# frozen_string_literal: true
require 'rspec'
require 'spec_helper'
require_relative '../app/dollar'

RSpec.describe 'Dollar' do
  describe '#multiplication' do
    it do
      five = Dollar.new(5)
      product = five.times(2)
      expect(product.amount).to eq 10
      product = five.times(3)
      expect(product.amount).to eq 15
    end
  end

  describe '#equality' do
    it 'equals comparing value objects' do
      expect(Dollar.new(5).equals(Dollar.new(5))).to be_truthy
    end
  end
end

