/*
 * A palindromic number reads the same both ways. The largest palindrome made
 * from the product of two 2-digit numbers is 9009 = 91 x 99.
 *
 * Find the largest palindrome made from the product of two 3-digit numbers.
 */

#include <stdio.h>
#include <string.h>

/**
 * reverse the original string recursively
 */
void reverse(char *s, int begin, int end)
{
  // temporary char to switch
  char c;

  if(begin >= end)
    return;
  
  c = *(s + begin);
  *(s + begin) = *(s + end);
  *(s + end) = c;

  reverse(s, ++begin, --end);
}

/**
 * Check if the number is a palindrome
 * 0 - true
 * any other value - false
 */
int pal_check(int n)
{
  char buffer[25];
  char rev[25];

  // '\0' is appended to buffer at the end
  int length = sprintf(buffer, "%d", n);

  // copy the string over but not the same reference
  strcpy(rev, buffer);

  // reverse the string
  reverse(rev, 0, length - 1);

  // if equal returns 0
  return strcmp(buffer, rev);
}

int main()
{
  const int BIG3 = 999;

  int num1 = BIG3;
  int num2 = BIG3;

  int largest = 0;

  // start from the top working down to smallest 3-digit value 100
  while(num1 > 100)
  {
    num2 = BIG3;
    
    while(num2 > 100)
    {
      int tmp = num1 * num2;

      if(pal_check(tmp) == 0)
      {
        if(tmp > largest)
          largest = tmp;
      }

      --num2;
    }
    --num1;
  }

  printf("%d\n", largest);
}
