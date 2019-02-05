# frozen_string_literal: true
require 'rspec'
require 'spec_helper'
require_relative '../app/dollar'

RSpec.describe 'Dollar' do
  describe '#multiplication' do
    it do
      five = Dollar.new(5)
      five.times(2)
      expect(five.amount).to eq 10
      five.times(3)
      expect(five.amount).to eq 15
    end
  end
end

