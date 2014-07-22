=begin
  The sum of the squares of the first ten natural numbers is,
    1^2 + 2^2 + 3^2 + ... + 10^2 = 385

  The square of the sum of the first ten natural numbers is,
    (1 + 2 + ... + 10)^2 = 55^2 = 3025

  Hence the difference between the sum of the squares of the first ten
  natural numbers is 3025 - 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred
  natural numbers and the square of the sum.
=end

@sum_of_squares = @square_of_sum = 0

# loop for first 100 natural numbers
for i in 1..100
  @sum_of_squares += i * i
end

# compute square_of_sum
for i in 1..100
  @square_of_sum += i
end

@square_of_sum *= @square_of_sum

puts @square_of_sum - @sum_of_squares

