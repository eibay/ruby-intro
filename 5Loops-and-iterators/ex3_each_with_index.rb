puts "------------------------------------"
puts "           Ex3. Each With Index"
puts "------------------------------------"

# Use the each_with_index method to iterate through 
# an array of your creation that prints each index 
# and value of the array.

pentateuch = ["Genesis", "Exodus", "Leviticus", "Numbers", "Deuteronomy"]
x = 1

pentateuch.each do |book|
  puts "#{x}. " + book
  x += 1
end
puts ""

puts "------------------------------------"
puts "             SOLUTION"
puts "------------------------------------"
top_five_games = ["mario brothers",
                  "excite bike",
                  "ring king",
                  "castlevania",
                  "double dragon"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}"
end