puts ""
puts "EX4"
puts "--------"

puts "Evaluate1" # FALSE

# The space on iterators after puts cause error
# '4' == 4 ? puts ("TRUE") : puts ("FALSE")

# The space matters and it should work now!
'4' == 4 ? puts("TRUE") : puts("FALSE")

puts "Evaluate2" # Did you get it right?
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

puts "Evaluate3"
y = 9
x = 10
if (x + 1) <= y
  puts "Alright."
elsif (x + 1) >= y
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty"
end