# spec/add_spec.rb

require 'rspec'
require_relative 'add' 

RSpec.describe 'add' do
  context 'with an empty string' do
    it 'returns 0' do
      expect(add('')).to eq(0)
    end
  end
end
