require 'spec_helper'
require_relative '../code/bubblesort.rb'

RSpec.describe 'Bubble sort' do

  describe 'Bubble sort' do

    it 'sorts an array of numbers' do
      input = [4,3,78,2,0,2]
      expected_result = [0,2,2,3,4,78]
      expect(bubble_sort(input)).to eq(expected_result)
    end

  end
end
