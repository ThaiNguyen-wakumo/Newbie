require 'pry'

class First_N_prime_number
#method check the number is prime or not
def check_prime (n)
	if n <= 1 
		return false
	end

	sqrt = Integer.sqrt(n)

	for i in 2..sqrt 
		if (n % i == 0)    
			return false
		end
		return true
	end
end

#method print out the first N prime number
def print_prime (n)
	count = 0 
	num = 2 
	while count < n do
		if check_prime(num)
			puts num 
			count+=1
		end
		num+=1 
	end
end

end

binding.pry 

puts "done"