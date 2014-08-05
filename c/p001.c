/*
 * Multiples of 3 and 5
 *
 * If we list all the natural numbers below 10 that are multiples of 3 
 * or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 * Find the sum of all the multiples of 3 or 5 below 1000.
 */

#include <stdio.h>

#define THREE 3
#define FIVE 5
#define MAX_SIZE 1000

/*
 *  Pass in var from main() to update.
 */
void sumMuls(int *sum)
{
  int i = 0;
  // Run time O(n) where n is MAX_SIZE in this case
  for(i = 0; i < MAX_SIZE; i++)
  {
    if(i % THREE == 0)
      *sum += i;

    else if(i % FIVE == 0)
      *sum += i;
  }
}

int main(void)
{
  int sum = 0;
  sumMuls(&sum);

  printf("--- The sum of the multiples of 3 and 5 up to 1000 is ---\n");
  printf("------------------------ %d -------------------------\n", sum);

  return 0;
}
