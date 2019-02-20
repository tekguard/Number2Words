# frozen_string_literal: true

require 'spec_helper'
require 'pry'

# Main class test cases

RSpec.describe Main do
  let(:number1) { 6686787825 }
  let(:number2) { 2282668687 }

  describe '#create' do
    it 'checking class return value' do
      result = Main.parse(number1.to_s)
      expect(result.count).to eq 11
    end

    it 'checking Integer params' do
      result = Main.parse(number2)
      expect(result.count).to eq 54
    end

    it 'checking Invalid params - Less number' do
      result = Main.parse(12323)
      expect(result).to be 'Please enter valid input'
    end

    it 'checking Invalid params - Special chacter' do
      result = Main.parse('124@838^*2')
      expect(result).to be 'Please enter valid input'
    end

    it 'checking Array params' do
      result = Main.parse([number1, number2])
      expect(result).to be 'Please enter valid input'
    end
  end
end
