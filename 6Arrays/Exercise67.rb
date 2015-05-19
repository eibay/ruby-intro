=begin

Write a program that iterates over an array and builds
a new array that is the result of incrementing each
value in the original array by a value of 2.
You should have two arrays at the end of this program,
The original array and the new array you've created.
Print both arrays to the screen using the p method
instead of puts.

=end
require_relative 'OutputFormat.rb'
include Format
title("EXERCISE 6.7 - ANSWERS")

b = []
a = [1, 2, 3, 4, 5]

a.each do |var|
  b <<  var + 2
end
p "Original array: #{a} "
p "New array     : #{b} "

title("EXERCISE 6.7 - SOLUTIONS")
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr
