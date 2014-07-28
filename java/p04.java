/*
 * Largest palindrome product
 * 
 * A palindromic number reads the same both ways. The largest palindrome 
 * made from the product of two 2-digit numbers is 9009 = 91 × 99.
 *
 * Find the largest palindrome made from the product of two 3-digit numbers.
 */

public class p04 {
	// StringBuilder is faster than StringBuffer because it is not synchronized
	public static boolean checkPali(int n) {
		StringBuilder original = new StringBuilder(String.valueOf(n));
		// The method reverse() persists on the StringBuilder object so must
		// assign String variables in order
		String a = original.toString();
		String b = original.reverse().toString();

		return a.equals(b);
	}

	/*
	 * Not an optimal solution.
	 * Outer loop runs 899 times. n times.
	 * Inner loop runs 808201 times. n*n times.
	 * Run-time of O(n^3).
	 */
	public static void getPali() {
		int num1 = 999;
		int num2 = 999;

		int currPali = 0;
		int prod = 0;
		int outCount = 0;
		int inCount = 0;
		
		while(num1 > 100) {
			num2 = 999;
			while(num2 > 100) {
				prod = num1 * num2;
				if(checkPali(prod)) {
					if(prod > currPali) {
						currPali = prod;
					}
				}
				++inCount;
				--num2;
			}
			++outCount;
			--num1;
		}

		System.out.println("Outer loop runs for: " + outCount);
		System.out.println("Inner loops runs for: " + inCount);
		System.out.println("The largest palindrome product is: " + currPali);
	}

	public static void main(String[] args) {
		getPali();
	}
}