=begin
Starting in the top left corner of a 2x2 grid, and only being able to move to
the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20x20 grid?
=end

# combinatorics problem: how many ways can you choose N out of 2N?
# use n choose k formula. used 

@paths = 1

20.times do |num|
    @paths *= 2 * 20 - num
    @paths /= num + 1
end

puts @paths