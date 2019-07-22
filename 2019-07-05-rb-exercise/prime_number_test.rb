require './prime_number.rb'
require 'minitest/autorun'
require 'pry'

class TestPrimeNumber < Minitest::Test
	def setup
		@prime = PrimeNumber.new
	end

	def test_check_prime
		assert_equal @prime.check_prime(1),false
		assert_equal @prime.check_prime(2),2..1
	end
end