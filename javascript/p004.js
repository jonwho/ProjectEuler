/*
 * Largest palindrome product
 * 
 * A palindromic number reads the same both ways. The largest palindrome 
 * made from the product of two 2-digit numbers is 9009 = 91 × 99.
 *
 * Find the largest palindrome made from the product of two 3-digit numbers.
 */

'use strict';

function reverseString(s) {
	return s.split('').reverse().join('');
}

function checkPali(n) {
	var numString = n.toString();
	var revString = reverseString(numString);
	return numString === revString;
}

var num1 = 999,
    num2 = 999,
    currPali = 0,
    prod = 0;

while(num1 > 100) {
	num2 = 999;
	while(num2 > 100) {
		prod = num1 * num2;
		if(checkPali(prod)) {
			if(prod > currPali) {
				currPali = prod;
			}
		}
		--num2;
	}
	--num1;
}


console.log('The largest palindrome from the product of 2 3-digit numbers:');
console.log(currPali);
