puts ""
puts "EX5 (Revisited Ex3)"
puts "-------------------"

# original
def find_range(number)
  if number < 0
    puts "Negative numbers are not allowed!"
  elsif number <= 50
    puts "#{number} is between 0 to 50."
  elsif number <= 100
    puts "#{number} is between 51 to 100."
  else 
    puts "#{number} is above 100."
  end
end

# WHEN version of EX5

def find_range2(number)
  
  case
  when number < 0
    puts "Negative numbers are not allowed!"
  when number <= 50
    puts "#{number} is between 0 to 50."
  when number <= 100
    puts "#{number} is between 50 to 100."
  else
    puts "#{number} is above 0."
  end
end

print "Please enter a number between 0 to 100:"
number = gets.chomp.to_i

find_range(number)
find_range2(number)