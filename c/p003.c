/*
 * The prime factors of 13195 are 5, 7, 13, and 29.
 *
 * What is the largest prime factor of the number 600851475143?
 *
 */

#include <stdio.h>

#define NUM 600851475143LL

long long largest( long long n )
{
  long long pfactor = 2LL;
  
  while(n > pfactor)
  {
    if(n % pfactor == 0)
    {
      n /= pfactor;
      pfactor = 2LL;
    }
    else
      ++pfactor;
  }

  return pfactor;
}

int main()
{
  long long fact = largest(NUM);
  printf("The largest prime factor of the number %llu is: %llu\n", NUM, fact);
}

