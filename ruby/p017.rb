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
    40 => 'forty', # correct spelling of 40 is FORTY not FOURTY
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
    100 => 'hundred',
    1000 => 'thousand'
}

@letterCount = 0

def countLetters(str)
    str.count 'a-zA-z'
end

def do1to19(num)
    @numbers[num]
end

# remember that in ruby that last statement ran is the return value
def doTens(num)
    ones = num % 10
    tens = (num / 10) * 10
    if(num % 10 == 0)
        @numbers[num]
    else
        @numbers[tens] + '-' + @numbers[ones]
    end
end

def doHuns(num)
    str = ''
    
    twoDigits = num % 100
    hundreds = num / 100

    str = @numbers[hundreds] + ' ' + @numbers[100]

    if(twoDigits == 0)
        # do nothing
    elsif(twoDigits < 20)
        str += ' and ' + do1to19(twoDigits)
    else
        str += ' and ' + doTens(twoDigits)
    end
    str
end

1.upto(1000) do |num|
    case num
    when 1..19
        numberString = do1to19(num)
        @letterCount += countLetters(numberString)
	    @first = @letterCount
	    puts numberString + ' ' + @letterCount.to_s
    when 20..99
        numberString = doTens(num)
        @letterCount += countLetters(numberString)
        @second = @letterCount
        puts numberString + ' ' + @letterCount.to_s
    when 100..999
        numberString = doHuns(num)
        @letterCount += countLetters(numberString)
        @third = @letterCount
        puts numberString + ' ' + @letterCount.to_s
    when 1000
        # 'one thousand'.length
        numberString = @numbers[1] + ' ' + @numbers[num]
        @letterCount += countLetters(numberString)
        @fourth = @letterCount
        puts numberString + ' ' + @letterCount.to_s
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