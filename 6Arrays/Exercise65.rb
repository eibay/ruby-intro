=begin

What is the value of a, b, and c in the following program?

string = "Welcome to Tealeaf Academy!"
a = string[6]
b = string[11]
c = string[19]

=end

require_relative 'OutputFormat.rb'
include Format
title("EXERCISE 6.5 - ANSWERS")

string = "Welcome to Tealeaf Academy!"
puts a = string[6]
puts b = string[11]
puts c = string[19]
