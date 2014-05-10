=begin
  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
    
    a^2 + b^2 = c^2

  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2

  There exists exactly one Pythagorean triplet for which a + b + c = 1000
  Find the product abc.
=end

@a = @b = @c = 0
@trip = 1000
@found = false

# outer loop for @a
@a = 1
while (@a < @trip / 3)
  # inner loop for @b
  @b = @a
  while (@b < @trip / 2)
    @c = @trip - @a - @b

    if(@a * @a + @b * @b == @c * @c)
      @found = true
      break
    end #endif

    @b += 1
  end #endwhile

  if @found then
    break
  end #endif
  @a += 1
end #endwhile

# print a, b, and c
puts "a is #{@a}"
puts "b is #{@b}"
puts "c is #{@c}"

# print product of a, b, and c
puts "a * b * c = #{@a * @b * @c}"
