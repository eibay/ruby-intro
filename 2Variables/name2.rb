puts "Exercise1"
print "Please type your name:"
name = gets.chomp
puts "Hello #{name}!, Welcome to this website."

10.times do |n| 
  puts name + n.to_s
end