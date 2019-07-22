require './palindrome_number.rb'
require 'minitest/autorun'
require 'pry'

class TestPalindrome < Minitest::Test
	def setup
		@palindrome = PalindromeNumber.new
	end

	def test_check_prime
		assert_equal @palindrome.palindrome(num),num.reverse
		
	end
end