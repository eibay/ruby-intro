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

title(2, "*** COMMON ARRAY METHODS ***")
title(1,"INCLUDE?")
p a = [23, 14, 16, 77]
puts "A includes 77 ? : #{a.include?(77)}"
puts "A includes 88 ? : #{a.include?(88)}"

title(2, "FLATTEN?")
a = [1.1, 1.2, [2.2, 2.5, 2.4], [3.1, 3.7]]
p a
c = a.flatten
p "Flatten array: #{c}"
p "Original remain unchanged: #{a}"

title(2, "EACH_INDEX")
a = [7, 2, 4, 6, 9]
p a
a.each_index { |i| puts "This is index #{i}"}
p "Original array: #{a}"

title(2, "EACH_WITH_INDEX")
a = [7, 21, 16, 8, 77]
p a
a.each_with_index { |val, idx| puts "#{idx + 1}. #{val}"}
p "Original array: #{a}"

title(2, "SORT")
a = [83, 74, 12, 93, 7, 54]
p a
puts "Sorted: #{a.sort}"
puts "Reverse sorting: #{a.sort { |x, y| y <=> x}}"
puts "Original: #{a}"

title(2, "PRODUCT")
p a = [1.1, 1.2, 1.3]
p b = [2.1, 2.2]
c = a.product b
p "Product of 2 arrays: #{c}"

title(2, "EACH VS MAP")
title(0, "EACH")
a = [1, 3, 2]
a.each { |e| puts e  }

spacer(1)

a = [3, 4, 5]
b = a.each {|e| puts e + 2}
p "2 were added: #{b}"
p "Original: #{a}"

puts "ENUMERATOR"
a = [1, 2, 3]
p a.each

title(1, "MAP")
a = [4, 5, 6]
b = a.map { |x| x**2}
p "Map array:  #{b} : (squared in this case.)"
p "Original array: #{a}"


title(1, "MAP and nil")
a = [1, 2, 3]
b = a.map { |x| puts x**2}
p b

title(1, "MAP - no block")
a = [1, 2, 3]
b = a.map
p b
