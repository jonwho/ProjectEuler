=begin
2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
=end

@num = 2 ** 1000

@sum = 0

while(@num > 0) do
    # modding by 10 gets the first digit, 100 gets first 2 digits, etc
    @sum += @num % 10
    @num /= 10
end

puts @sum