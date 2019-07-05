require './first_n_prime_number.rb'
require 'minitest/autorun'
require 'pry'

class First_N_prime_number < Minitest::Test

	def setup
		@first_N_prime_number = First_N_prime_number.new
	end

	def test_check_prime
		assert_equal @first_N_prime_number.check_prime(10),2..11
	end
end
