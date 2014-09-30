/*
 * The prime factors of 13195 are 5, 7, 13, and 29.
 *
 * What is the largest prime factor of the number 600851475143?
 */

var largest_prime = 2;
var num = 600851475143;

function largest(n) {
	while(n > largest_prime) {
		if(n % largest_prime === 0) {
			n /= largest_prime;
			largest_prime = 2;
		}
		else
			++largest_prime;
	}
	return largest_prime;
}

console.log(largest(num));