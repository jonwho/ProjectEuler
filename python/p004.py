"""
A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""

# the largest 3 digit number
num1 = num2 = 999
largest = 0

def pal_check(n):
  str_to_check = str(n)
  return str_to_check == str_to_check[::-1]

while num1 > 100:
  num2 = 999

  while num2 > 100:
    temp = num1 * num2

    if pal_check(temp):
      if temp > largest:
        largest = temp

    num2 = num2 - 1

  num1 = num1 - 1

print largest
