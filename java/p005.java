/*
 * Smallest multiple
 *
 * 2520 is the smallest number that can be divided by each of 
 * the numbers from 1 to 10 without any remainder.
 *
 * What is the smallest positive number that is evenly 
 * divisible by all of the numbers from 1 to 20?
 */

public class p005 {

	public static int lcm(int a, int b) {
		int tmp = gcd(a, b);
		return a*b/tmp;
	}

	public static int gcd(int a, int b) {
		return b == 0 ? a : gcd(b, a % b);
	}

	public static void testGCD(int a, int b) {
		System.out.println(gcd(a, b));
		System.out.println(gcd(b, a));
	}

	/*
	 * gcd method by repeated subtraction
	 *
	 * public static void gcd(int a, int b) {
	 *     while(a != b) {
	 *         if(a > b)
	 *             a = a - b;
	 *         else
	 *             b = b - a;
	 *     }
	 *     return a;
	 * }
	 */

	/*
	 * gcd method by modulo reduction
	 *
	 * public static void gcd(int a, int b) {
	 *     while(b != 0) {
	 *         int tmp = b;
	 *         b = a % b;
	 *         a = tmp;
	 *     }
	 *     return a;
	 * }
	 */

	public static void main(String[] args) {
		//testGCD(8, 12); // expect 4
		//testGCD(101, 50); // expect 1
		//testGCD(1000, 20); // expect 20

		int lcmVar = 1;

		for(int i = 1; i < 20; ++i) {
			lcmVar = lcm(lcmVar, i);
		}

		System.out.println("lcmVar: " + lcmVar);
	}
}