#Password Generator

## password.rb

```rb
require 'pry'

class Password

  ALPHA = ('a'..'z').to_a
  DIGIT = ('0'..'9').to_a
  UPPER = ('A'..'Z').to_a
  PUNCT = ('#'..'.').to_a

  def self.generate (length: 10, upper: 2, digit: 2, punct: 1, unique: true)
    (UPPER.sample(upper) + DIGIT.sample(digit) + PUNCT.sample(punct) + ALPHA.sample(length-digit-upper-punct)).shuffle.join if unique == true && digit + punct + upper <= length
  end
end
```

## password_test.rb

```rb
require './password'
require 'minitest/autorun'
require 'pry'

class PasswordTest < MiniTest::Test
  def test_unique
    assert_equal Password.generate.split('').uniq.size, Password.generate.split('').size
  end  
  
  def test_length
    password = Password.generate(length: 10)
    assert_equal password.size, 10
  end

  def test_digit
    password = Password.generate(length: 10, digit: 2)
    assert_equal password.size, 10
    assert_match /[0-9]/, password, 2
  end

  def test_upper
    password = Password.generate(length: 10, upper: 2)
    assert_equal password.size, 10
    assert_match /[A-Z]/, password, 2
  end

  def test_punct
    password = Password.generate(length: 10, punct: 1)
    assert_equal password.size, 10
    assert_match /[#-.]/, password, 1
  end
end
```
