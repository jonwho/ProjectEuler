"""
The prime factors of 13195 are 5, 7, 13, and 29.

What is the largest prime factor of the number 600851475143?
"""

largest_prime = 2
num = 600851475143

def largest(n):
	# need to declare using global largest_prime in local scope
	global largest_prime
	while n > largest_prime:
		if n % largest_prime == 0:
			n /= largest_prime
			largest_prime = 2

		else:
			largest_prime += 1

	return largest_prime

print largest(num)