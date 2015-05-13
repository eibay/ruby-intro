# Exercise2 - 4 Digit Modulo/Division breakdown
puts "Exercise2 - 4 Digit Modulo/Division breakdown"
puts "--------"

num = 8546
thousands_digit = num / 1000
puts thousands_digit

hundreds_digit = num % 1000  / 100
puts hundreds_digit 

tens_digit = num % 1000 % 100 / 10
puts tens_digit

ones_digit = num % 1000 % 100 % 10
puts ones_digit

print thousands_digit, hundreds_digit, tens_digit, ones_digit
puts ""
