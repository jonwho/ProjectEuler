=begin
  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13 we can see
  that the 6th prime is 13.

  What is the 10001st prime?

  Very long runtime approx ~2mins
  Algorithm is not efficient. Look up Sieve of Eratosthenes for a better
  solution at O(n log log n) runtime.
=end

def isPrime(n)
  i = 2
  while i < n
    if (n % i == 0 && i != n)
      return false
    end
    i += 1
  end
  return true
end

@primeArr = Array.new
@count = 2

while @primeArr.length < 10001
  if(isPrime(@count))
    @primeArr.push(@count)
  end
  @count += 1
end

puts @primeArr.last
