require 'pry'

class PalindromeNumber

def palindrome(num)
  	rev = 0
  	a = num

  	while a != 0
		i = a%10
		rev = rev*10 + i
		a /= 10
	end

  # 	if rev == num
		# puts "true"
  # 	else
		# puts "false"
  # 	end
end

end

binding.pry

puts "done"