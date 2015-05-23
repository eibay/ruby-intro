require '../OutputFormat.rb'
include Format

title("Exercise 7.5 - ANSWER")
# What method could you use to find out if a
# Hash contains a specific value in it?
# Write a program to demonstrate this use.

bible = {genesis: "adam", exodus: "moses", luke: "jesus"}

p (bible.has_value?("jesus"))? "Yes it's there!" : "No, there isn't."
p (bible.has_value?("mary"))? "Yes it's there!" : "No, there isn't."


title("Exercise 7.5 - SOLUTION")

opposites = {positive: "negative", up: "down", right: "left"}

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end
