#Password Generator

## password.rb

```rb
require 'pry'

class Password

	ALPHA = ('a'..'z').to_a
	DIGIT = ('0'..'9').to_a
	UPPER = ('A'..'Z').to_a
	PUNCT = ('#'..'/').to_a
  
  def self.generate (length: 10, upper: 2, digit: 2, punct: 1, unique: true)
    if unique == true
      if digit + punct + upper <= length
        (UPPER.sample(upper) + DIGIT.sample(digit) + PUNCT.sample(punct) + ALPHA.sample(length-digit-upper-punct)).shuffle.join
      else
        return false
      end
    else
      return false
    end
  end
end
```

## password_test.rb

```rb
require './password'
require 'minitest/autorun'
require 'pry'

class PasswordTest  < MiniTest::Test
	
	def test_length
		assert_equal Password.generate.size, 10
	end

	def test_digit_upper_punct
		assert_match (/[A-Za-z0-9]+$/), Password.generate
	end
end
```