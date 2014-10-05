/*
 * 2520 is the smallset number that can be divided by each of the numbers
 * from 1 to 10 without any remainder.
 *
 * What is the smallest positive number that is evenly divisible by all of
 * the numbers from 1 to 20?
 */

#include <stdio.h>

/**
 * return the greatest common denominator between the two numbers
 */
int gcd(int a, int b)
{
  return b == 0 ? a : gcd(b, a % b);
}

/**
 * constraint: a > b
 */
int LCM(int a, int b)
{
  int tmp = gcd(a, b);
  return a * b / tmp;
}

int main()
{
  int lcmVar = 1;
  int i = 1;

  for(; i < 20; ++i)
  {
  	lcmVar = LCM(lcmVar, i);
  }

  printf("%d\n", lcmVar);
}
