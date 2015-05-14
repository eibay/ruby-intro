puts ""
puts "EX2"
puts "------"

# First try 
print "Please enter a string to evaluate:"
input = gets.chomp
if input.size > 10
  puts input.upcase
else
  puts input
end

# Second try, uses method as what the program requires
# solution uses caps as name of method
def input_upcase(input)
  if input.size > 10
    input.upcase
  else
    input
  end
end

puts input_upcase("John Newman")
puts input_upcase("Heather Graham")
puts input_upcase("Ko Yap")