puts "------------------------------------"
puts "           Ex2. While Loop"
puts "------------------------------------"

# ANSWER
x = ""
while x != "STOP" do
  print "Please enter anything: "
  x = gets.chomp.upcase
  puts x
  puts x == "STOP" ? "System SHUTDOWN!" : "System ON!" 
end


# SOLUTION
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end