=begin
  2520 is the smallest number that can be divided by each of the numbers from
  1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the
  numbers from 1 to 20?
=end

@num1 = @num2 = 0

# constraint: a > b
def LCM(a, b)
  tmp = a.gcd(b)
  return a*b/tmp
end

puts (1..20).inject{ |b, a| LCM(b, a) }
