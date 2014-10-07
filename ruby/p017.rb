=begin
If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in 
words, how many letters would be used?


NOTE: Do not count spaces or hyphens. 
For example, 342 (three hundred and forty-two) contains 23 letters and 115 
(one hundred and fifteen) contains 20 letters. The use of "and" when writing 
out numbers is in compliance with British usage.
=end

# answer is 21124

@numbers = {
    0 => '',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'fourty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
    100 => 'hundred',
    1000 => 'thousand'
}

@letterCount = 0

1.upto(1000) do |num|
    case num
    when 1..19
        @letterCount += @numbers[num].length
	@first = @letterCount
    when 20..99
        ones = num % 10
        tens = num - ones
	if(num % 10 == 0)
	    puts num
	    @letterCount += @numbers[num].length
	else
	    puts num
            @letterCount += @numbers[ones].length + @numbers[tens].length
	end
	@second = @letterCount
    when 100..999
        twoDigits = num % 100
        hundreds = num / 100
        
        # one hundred, two, three, etc ...
        @letterCount += @numbers[hundreds].length
        # 'hundred'.length
        @letterCount += @numbers[100].length
        
        if(twoDigits < 20)
            @letterCount += @numbers[twoDigits].length
            # 'and', e.g. 'one hundred and fifteen'
            @letterCount += 3
        else
            ones = twoDigits % 10
            tens = twoDigits / 10
            @letterCount += @numbers[ones].length + @numbers[tens].length
            # 'and', e.g. 'one hundred and fifty-four'
            @letterCount += 3
        end
	@third = @letterCount
    when 1000
        # 'one thousand'.length
        @letterCount += @numbers[1].length
        @letterCount += @numbers[num].length
	@fourth = @letterCount
    end
end

puts 'letter count after 1-19 is: '
puts @first
puts 'letter count after 99 is: '
puts @second
puts 'letter count after 999 is: '
puts @third
puts 'letter count after 1000 is: '
puts @fourth
puts @letterCount
