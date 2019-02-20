# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Main do
  let(:number1) { 6686787825 }
  let(:number2) { 6686787825 }

  describe '#create' do
    it 'checking class return value' do
      main = Main.new(number1)
      expect(main).to have(11).items
    end

    it 'checking invalid params' do
    end

    it 'checking  Integer and String mis match params' do
    end

    it 'checking multi params' do
    end
  end
end
