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

def do1to19(num)
    count = @numbers[num].length
    puts @numbers[num]
    count
end

def doTens(num)
    count = 0
    ones = num % 10
    tens = (num / 10) * 10
    if(num % 10 == 0)
        count = @numbers[num].length
        puts @numbers[num]
    else
        count = @numbers[tens].length + @numbers[ones].length
        puts @numbers[tens] + ' ' +  @numbers[ones]
    end
    count
end

def doHuns(num)
    count = 0
    twoDigits = num % 100
    hundreds = num / 100

    # 'one' hundred, 'two', 'three', etc ...
    count += @numbers[hundreds].length
    # 'hundred'.length
    count += @numbers[100].length

    if(twoDigits == 0)
        puts @numbers[hundreds] + ' ' + @numbers[100]
    elsif(twoDigits < 20)
        print @numbers[hundreds] + ' ' + @numbers[100] + ' and '
        count += 'and'.length
        count += do1to19(twoDigits)
    else
        print @numbers[hundreds] + ' ' + @numbers[100] + ' and '
        count += 'and'.length
        count += doTens(twoDigits)
    end
	count
end

1.upto(1000) do |num|
    case num
    when 1..19
        @letterCount += do1to19(num)
	    @first = @letterCount
    when 20..99
        @letterCount += doTens(num)
        @second = @letterCount
    when 100..999
        @letterCount += doHuns(num)
        @third = @letterCount
    when 1000
        # 'one thousand'.length
        @letterCount += @numbers[1].length
        @letterCount += @numbers[num].length
	    @fourth = @letterCount
	    puts @numbers[1] + ' ' + @numbers[num]
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