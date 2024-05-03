# spec/add_spec.rb

require 'rspec'
require_relative 'add' 

RSpec.describe 'add' do
  context 'with an empty string' do
    it 'returns 0' do
      expect(add('')).to eq(0)
    end
  end
  context 'with a single number' do
    it 'returns the number itself' do
      expect(add('1')).to eq(1)
    end

    it 'returns the number itself' do
      expect(add('5')).to eq(5)
    end
  end
end
