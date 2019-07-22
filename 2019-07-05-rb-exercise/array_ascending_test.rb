require './palindrome_number.rb'
require 'minitest/autorun'
require 'pry'

class TestMyArray < Minitest::Test 
	def setup
		@array = MyArray.new
	end

	def test_array_ascending
		assert_equal @array.my_array(new_array),list.sort
	end
end

#not completed yes