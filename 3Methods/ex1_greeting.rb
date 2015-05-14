def greeting(name)
  puts "Hello and welcome #{name}"
end

puts "Please enter your name:"
name = gets.chomp
greeting(name)