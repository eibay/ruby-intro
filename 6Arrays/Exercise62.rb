=begin
What will the following programs return?
What is value of arr after each?

1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
=end
# $LOAD_PATH << '.' or require_relative

require_relative 'OutputFormat.rb'
include Format

title("EXERCISE 6.2A - ANSWER")
arr = ["b", "a"]
p arr = arr.product(Array(1..3))
result = arr.first.delete(arr.first.last)
p arr
p "Result: #{result}"

title("EXERCISE 6.2B - ANSWER")
arr = ["b", "a"]
p arr = arr.product([Array(1..3)])
result2 = arr.first.delete(arr.first.last)
p arr
p "Result2: #{result2}"


title("EXERCISE 6.2 - SOLUTION")
puts "NOT Applicable"
