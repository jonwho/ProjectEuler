=begin
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) 
contains 10 terms. Although it has not been proved yet (Collatz Problem), it is 
thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

@chain = 0

@startNum = 999999

def collatz(n)
    chain = 0
    while n != 1 do
        n.even? ? n /= 2 : n = 3 * n + 1
        chain += 1
    end
    chain
end

while @startNum > 0 do
    collatzNum = collatz(@startNum)
    
    if(collatzNum > @chain)
        @chain = collatzNum
        @bigStartNum = @startNum
    end
    @startNum -= 1
end

puts @chain
puts @bigStartNum