require './prob3'
require 'minitest/autorun'
require 'pry'

class TestPalindrome < Minitest::Test
	def setup
		@palindrome = PalindromeNumber.new
	end

	def test_check_prime
		assert_equal @palindrome.palindrome(131),nil
		assert_equal @palindrome.palindrome(456),nil
	end
end