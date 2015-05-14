puts "------------------------------------"
puts "  Ex4. RECURSION COUNTDOWN TO ZERO"
puts "------------------------------------"

def countdown(number)
  if number >= 0
    puts number
    number -= 1
    countdown(number)
  else
    puts number
  end
end

countdown(10)
countdown(-5) #not working yet
#countdown(20)


puts "------------------------------------"
puts "              SOLUTION"
puts "------------------------------------"

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
#count_to_zero(20)
count_to_zero(-3)