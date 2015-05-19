=begin

What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)

2. arr.index[5]

3. arr[5]

=end

require_relative 'OutputFormat.rb'
include Format
title("EXERCISE 6.4 - ANSWERS")

arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts "Outputs the index location: #{arr.index(5)}"
#puts arr.index[5] #Method error
puts "Outputs the 6th element: #{arr[5]}"

title("EXERCISE 6.4 - SOLUTIONS")
