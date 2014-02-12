=begin
  @author Jon Ho

  The prime factors of 13195 are 5, 7, 13, and 29.

  What is the largest prime factor of the number 600851475143?

  Algorithm used:
    Divide the number you are trying to factor by current divisor if it's
    a factor. Initially set at 2, increment the number by 1 every time it
    can't divide into the number. Do this until you can divide the number,
    then reset current divisor to 2 and repeat until number you are trying
    to divide is equal to 1 (less than 2, since we reset to 2 on successful
    division). When loop is finised you are left with the largest prime factor.
=end

@largest_prime = 2
@num = 600851475143

def largest(n)
  while n > @largest_prime do
    if(n % @largest_prime == 0)
      n = n / @largest_prime
      @largest_prime = 2
    
    else
      @largest_prime += 1
    end
  end
  @largest_prime
end

puts largest(@num)
