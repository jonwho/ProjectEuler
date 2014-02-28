=begin
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.

  Algorithm: Sieve of Eratosthenes
             Removes non-primes from consideration to reduce computation
=end

# constant for two million
@TWOMILLION = 2000000

# returns an array that contains primes up to the max number
def prime_sieve_upto( max )
  # new array
  sieve = []
  # initialize values from 2 up to max into the array
  for i in 2 .. max
    sieve[i] = i
  end

  # sieve prime values
  for i in 2 .. Math.sqrt(max)
    next unless sieve[i]
    (i * i).step(max, i) do |j|
      sieve[j] = nil
    end
  end
  sieve.compact!
end

@prime_arr = prime_sieve_upto(@TWOMILLION)

# verify primes and size
#@prime_arr.each { |x| puts x }
#puts @prime_arr.size

@sum = 0

@prime_arr.each { |x| @sum += x }
puts @sum
