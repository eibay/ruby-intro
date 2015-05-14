puts "------------------------------------"
puts "           Ex1. EACH method "
puts "------------------------------------"

def array
  x = [1, 2, 3, 4, 5]

  x.each do |a|
    a + 1
  end
end

p array

