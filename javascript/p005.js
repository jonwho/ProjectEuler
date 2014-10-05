/*
 * Smallest multiple
 * 2520 is the smallest number that can be divided by each of
 * the numbers from 1 to 10 without any remainder.
 * 
 * What is the smallest positive number that is evenly
 * divisible by all of the numbers from 1 to 20?
 */

function lcm(a, b) {
  var tmp = gcd(a, b);
  return a * b / tmp;
}

function gcd(a, b) {
  return b == 0 ? a : gcd(b, a % b);
}

var lcmVar = 1;

for(var i = 1; i < 20; ++i) {
  lcmVar = lcm(lcmVar, i);
}

console.log(lcmVar);
