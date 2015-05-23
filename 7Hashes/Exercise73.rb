require '../OutputFormat.rb'
include Format

title("Exercise 7.3 - ANSWER")
=begin
Using some of Ruby's built-in Hash methods,
write a program that loops through a hash
and prints all of the keys. Then write a
program that does the same thing except printing
the values. Finally, write a program that prints
both.
=end

chords = { C: "I", Dm: "ii", Em: "iii", F: "IV", G: "V", Am: "vi" }

p chords.keys    # uses plural word keys
p chords.values  # uses plural word values

chords.each do |key, value| # uses singular word key, value
  puts "#{key} - #{value}"
end


title("Exercise 7.3 - SOLUTION")
opposites = {positive: "negative", up: "down", right: "left"}
opposites.each_key  {|key| puts key}
opposites.each_value {|value| puts value}
opposites.each {|key, value| puts "The opposite of #{key} is #{value}"}
