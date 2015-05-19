# Below we have given you an array and a number.
# Write a program that checks to see
# if the number appears in the array.

# arr = [1, 2, 3, 5, 7, 9, 11]
# number = 3

# Formatting begins here.

require_relative 'OutputFormat.rb'
include Format

title("EXERCISE 6.1 - ANSWER")
arr = [1, 2, 3, 5, 7, 9, 11]
number = 3

p "Given array: #{arr}"
p "Looking for number: #{number}"
p "The answer is: #{arr.include?(number)}. "
spacer(2)

#puts (3 > 4) ? "Left is greater" : "Right is greater"
puts (arr.include?(number))? "Yes, #{number}, is in the array." : "No, #{number}, is not in the array."

title("EXERCISE 6.1 - SOLUTION")
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

if arr.include? (number)
  puts "#{number} is indeed in the array."
end
