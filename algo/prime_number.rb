# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def is_prime?(number)
  divided_by = number - 1
  while divided_by > 1
    if number % divided_by == 0
      return false
    end
    divided_by -= 1
  end
  return true
end

p is_prime?(11)

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the 
# highest prime number under 10 is 7.

def highest_prime_number_under(number)
  highest_prime = 0
   for num in 1..number
      if is_prime?(num) && num > highest_prime
        highest_prime = num
      end
    end
  return highest_prime
end

p highest_prime_number_under(20)

