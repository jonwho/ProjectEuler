=begin
  A palindromic number reads the same both ways. The largest palindrome made
  from the product of two 2-digit numbers is 9009 = 91 x 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
=end

# the largest 3 digit number
@num1 = @num2 = 999
@largest = 0

def pal_check(n)
  str_to_check = n.to_s
  return str_to_check == str_to_check.reverse
end

while @num1 > 100 do
  @num2 = 999

  while @num2 > 100 do
    @temp = @num1 * @num2

    if pal_check(@temp)
      if @temp > @largest
        @largest = @temp
      end
    end

    @num2 = @num2 - 1
  end

  @num1 = @num1 - 1
end

puts @largest
