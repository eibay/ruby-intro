# Formatting begins here.
def hline
  puts ("-" * 40)
end
def spacer(lines)
  lines.times do puts "" end
end
def title(string)
  spacer(1)
  hline
  b = (40 - string.size)/2
  puts 32.chr * b + string + 32.chr * b
  hline
end
# formatting ends here.

title(2, "ARRAYS")

mix = [1, "Bob", 4.33, 'another string']
print mix

index = 1
mix.each do |var|
  puts "#{index}. " + var.to_s
  index += 1
end

puts "" # new line
puts "First item is: " + mix.first.to_s

puts "Last item is: " + mix.last.to_s

puts "Position 3 is: " + mix[2].to_s

title(2, "MODIFYING ARRAYS")

# take last item off
print "Original mix: " + mix.to_s
puts "Last element pop: " + mix.pop.to_s
print "Elements after pop: " + mix.to_s

spacer(2)
mix.push("new thing")
mix << ("777")
print "New mix: " + mix.to_s


title(2, "MAP / COLLECT ARRAYS")

numArray = [ 1, 2, 3, 4, 5]
print "Original numArray: " + numArray.to_s
spacer(2)

puts "#{numArray} values --> squared"
print "New numArray: " + (numArray.map {|var| var ** 2}).to_s + " using Map."
spacer(2)

print "New numArray: " + (numArray.collect {|var| var ** 2}).to_s + " using collect."


title(2, "DELETE_AT : ARRAY INDEX")

puts numArray.delete_at(1)
p numArray


title(2, "DELETE : ARRAY - ITEM")

pets = ["cat", "dog", "bird", "hamster", "tarsier"]
p pets
pets.delete("hamster")
p "After delete : #{pets}"

title(2, "UNIQ : IN ARRAY - ITEM")

p "Original" + (b = [ 1, 1, 2, 2, 3, 4, 5, 7, 7 ]).to_s
p "Unique elements are: #{b.uniq}"
p "Unique elements with !: #{b.uniq!}"
p "New array: + #{b}"

title(2, "SELECT : IN ARRAY")

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers
p numbers.select { |number| number > 4}
p numbers

title(2, "MUTATING THE CALLER : The Sequel")

def mutate (arr)
  arr.pop
end

def non_mutate(arr)
  arr.select{|i| i > 3}
end

a = [1,2,3,4,5,6,7]
p "Original: #{a}"
p "Pop element: #{mutate(a)}"
p "Selected element: #{non_mutate(a)}"

title(2, "NESTED ARRAYS")
teams = [ [ "Joe", "Steve"],
          ["Frank", "Molly"],
          ["Dan", "Sara"]]
p teams
p "Team selected: #{teams[2]}"

title(2, "COMPARING ARRAYS")
p a = [7, 6, 5]
p b = [6, 5, 4]
puts a == b
puts "Pop B: #{b.pop}"
puts "Unshift B: #{b.unshift(7)}" #inserts the number 1 at the beginning
puts a == b

title(2, "TO_S : CONVERSION EQUIVALENT")
p a = [1, 2, 3]
puts "It's easy to show as #{a}"
