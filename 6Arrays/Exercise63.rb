=begin

How do you print the word "example" from the following
array?
arr = [["test", "hello", "world"],["example", "mem"]]

=end

require_relative 'OutputFormat.rb'
include Format

title("EXERCISE 6.3 - ANSWERS")

arr = [["test", "hello", "world"],["example", "mem"]]

puts "Array [1][0]: #{arr[1][0]}"
puts "Array arr.last: #{arr.last[0]}"
puts "Array arr[1].first: #{arr[1].first}"

title("EXERCISE 6.3 - SOLUTIONS")
puts "Array last.first:  #{arr.last.first}"
