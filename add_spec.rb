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

    context 'with comma-separated numbers' do
    it 'returns the sum of two numbers separated by a comma' do
      expect(add('1,2')).to eq(3)
    end


    it 'returns the sum of three numbers separated by commas' do
      expect(add('6,2,3')).to eq(11)
    end
  end

  context 'with newlines between numbers' do
    it 'returns the sum of numbers separated by newlines and commas' do
      expect(add("5,1\n2,3")).to eq(11)
    end
  end

   context 'with custom delimiters' do
    it 'returns the sum of numbers separated by a custom delimiter' do
      expect(add("//;\n6;2")).to eq(8)
    end
  end

    context 'with negative numbers' do
    it 'raises an exception for a negative number' do
      expect { add("1,-2,3") }.to raise_error(RuntimeError, "negative numbers not allowed -2")
    end

    it 'raises an exception with all negative numbers listed' do
      expect { add("-1,-2,-3") }.to raise_error(RuntimeError, "negative numbers not allowed -1, -2, -3")
    end
  end
end
