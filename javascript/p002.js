/*
 * Each new term in the Fibonacci sequence is generated by adding the
 * previous two terms. By starting with 1 and 2, the first 10 terms will be:
 * 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 *
 * By considering the terms in the Fibonacci sequence whose values do not
 * exceed four million, find the sum of the even-valued terms.
 */

'use strict';

var sum = 0;
var FM = 4000000;
var term = 0;

function fib(n) {
	return n < 2 ? n : fib(n - 1) + fib(n - 2);
}

while(fib(term) < FM) {
	if( (fib(term) % 2) === 0)
		sum += fib(term);

	++term;
}

console.log(sum);