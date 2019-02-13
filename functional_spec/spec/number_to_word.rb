# frozen_string_literal: true

require 'spec_helper'

RSpec.describe NumberToWord do
  let(:number1) {6686787825}
  let(:number2) {2282668687}
  let(:new_map) { NumberToWord.new }

  before :each do
  end

  describe 'validate number' do
    expect(new_map.mapping number1).to have(11).items
  end
end
