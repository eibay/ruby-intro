puts ""
puts "EX3"
puts "--------"
# Write a program that takes a number from the user between 
# 0 and 100 and reports back whether the number is between 
# 0 and 50, 50 and 100, or above 100.

#ANSWER
puts "Please enter a number (0 - 100): "
number = gets.chomp.to_i

if (number >= 0) && (number <= 50)
  puts "#{number} is in the range 0 - 50."
elsif (number >= 50) && (number <= 100)
  puts "#{number} is in the range 50 - 100."
else (number > 100)
  puts "#{number} is more than 100."
end

# SOLUTION
print "Please enter a number between 0 to 100: "  
number = gets.chomp.to_i

if number < 0
  puts "Negative numbers are not allowed!"
elsif number <= 50
  puts "#{number} is between 0 to 50."
elsif number <= 100
  puts "#{number} is between 51 to 100."
else 
  puts "#{number} is above 100."
end