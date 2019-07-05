require 'pry'

class PrimeNumber
#method check the number is prime or not
def check_prime (n)
    if n <= 1
        return false
    end

    for i in 2..n-1
        if n % i == 0
            return false
        end
        return true
    end
end

#method print out the prime number
def print_prime (n)
    for i in (2..(n-1))
        if check_prime(i)
            puts i
        end
    end
end

end

binding.pry

puts "done"