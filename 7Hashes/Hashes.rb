require '../OutputFormat.rb'
#require './OutputFormat.rb' if the same directory
#require_relative 'OutputFormat.rb' if in the same directory
include Format

title("HASHES - BASICS")
new_hash = {firstname: 'Bob', lastname: "Dork" }
sT("1. Hash Creation")

#  :label  <--- symbols
#  =>      <--- hash rocket
p new_hash

person = {height: '6 ft', weight: '65 kg' }
p person

sT("2. Adding To Hash")
person[:age] = 28
p person

sT("3. Removing From Hash")
person.delete(:age)
p person

sT("4. Retrieve Info From Hash")
p person[:weight]

sT("5a. Merge Two Hashes Together")
p person.merge(new_hash)
p "Merge only: #{person}"

sT("5b. Merge! Two Hashes Together")
person.merge!(new_hash)
p "Destructive merge: #{person}"

sT("6. Iterating Over Hashes")
person = {name: "bob", height: "6'ft", weight: "160 lbs", hair: "brown"}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

sT("7a. Hashes As Optional Parameters")
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})

sT("7b. Hashes as options w/ simpler syntax")
greeting("Elmer", age: 40, city: "Manila")

sT("8. Hashes vs. Arrays")

=begin
When deciding whether to use a hash or an array,
ask yourself a few questions:

Does this data need to be associated with a
specific label? If yes, use a hash. If the data
doesn't have a natural label, then typically an array will work fine.

Does order matter? If yes, then use an array.
As of Ruby 1.9, hashes also maintain order,
but usually ordered items are stored in an array.

Do I need a "stack" or a "queue" structure?
Arrays are good at mimicking simple "first-in-first-out" queues,
or "last-in-first-out" stacks.
=end

sT("9. A Note On Hash Keys")
=begin

It is possible to use a different data type for a key

irb :001 > {"height" => "6 ft"}     # string as key
=> {"height"=>"6 ft"}
irb :002 > {["height"] => "6 ft"}   # array as key
=> {["height"]=>"6 ft"}
irb :003 > {1 => "one"}             # integer as key
=> {1=>"one"}
irb :004 > {45.324 => "forty-five point something"}  # float as key
=> {45.324=>"forty-five point something"}
irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
=> {{:key=>"key"}=>"hash as a key"}

=end

title("COMMON HASH METHODS")
sT("1. has_key?")
# The has_key? method allows you to check if a hash contains a specific key.
# It returns a boolean value.

name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
p name_and_age

p name_and_age.has_key?("Steve")

p name_and_age.has_key?("Larry")

sT("2. select")
p name_and_age.select { |k, v| k == "Bob"}

p name_and_age.select {|k, v| (k == "Bob") || (v == 19) }

sT("3. fetch")
p name_and_age.fetch("Steve")

# p name_and_age.fetch("Larry")  # error if not found

p name_and_age.fetch("Larry", "Larry isn't in this hash.")

sT("3. to_a")
# The to_a method returns an array version of
# your hash when called.

p name_and_age.to_a
p name_and_age # hash remain intact after conversion

sT("4. keys and values")
puts "These are all the keys: #{name_and_age.keys}"
puts "These are all the values: #{name_and_age.values}"

# Notice that the returned values are in array
# format. Because it's returning an array,
# you can do interesting things like printing out all the keys in a hash:

name_and_age.keys.each { |k| puts k}

title("A NOTE ON HASH ORDER")
=begin
In past versions of Ruby, you could not rely
on hashes maintaining order. Since Ruby 1.9,
hashes maintain the order in which they're
stored. It's important that you know this
because if you are ever working with an older
version of Ruby (anything before Ruby 1.9)
you cannot rely on the hashes being in any
specific order.
=end
