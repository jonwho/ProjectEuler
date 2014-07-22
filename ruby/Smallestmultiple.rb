=begin
  2520 is the smallest number that can be divided by each of the numbers from
  1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the
  numbers from 1 to 20?
=end

# constraint: a > b
def LCM(a, b)
  tmp = a.gcd(b)
  return a*b/tmp
end

# use inject on enumerables to reduce down to final answer
puts (1..20).inject{ |b, a| LCM(b, a) }
