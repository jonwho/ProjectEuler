/*
 * Largest prime factor
 * 
 * The prime factors of 13195 are 5, 7, 13 and 29.
 * What is the largest prime factor of the number 600851475143 ?
 *
 * Algorithm used:
 *   Divide the number you are trying to factor by current divisor if it's
 *   a factor. Initially set at 2, increment the number by 1 every time it
 *   can't divide into the number. Do this until you can divide the number,
 *   then reset current divisor to 2 and repeat until number you are trying
 *   to divide is equal to 1 (less than 2, since we reset to 2 on successful
 *   division). When loop is finised you are left with the largest prime factor.
 */

public class p003 {
	private static final long MY_NUMBER = 600851475143L;

	private static void printLargestPrimeOf(long n) {
		int curr_prime = 2;

		while (n > curr_prime) {
			if (n % curr_prime == 0) {
				n = n / curr_prime;
				curr_prime = 2;
			}
			else
				++curr_prime;
		}

		System.out.print("The largest prime factor of ");
		System.out.println(MY_NUMBER + " is: " + curr_prime);
	}

	public static void main(String[] args) {
		printLargestPrimeOf(MY_NUMBER);
	}
}