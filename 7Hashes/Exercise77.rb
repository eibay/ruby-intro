require '../OutputFormat.rb'
include Format

=begin
Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

What's the difference between the two hashes that
were created?

=end

title("Exercise 7.7 - ANSWER")

sT("Expression 1")
puts "This expression: my_hash = {x: \"some value\"}
      will replace whatever original value in \"key x\""

x = "hi there"
my_hash = {x: "some value"}
puts "Hash: #{my_hash}"
spacer(2)

sT("Expression 2")
puts "This expression: my_hash2 = {x => \"some value2\"}
     replaces the value while x became the key of the hash."

my_hash2 = {x => "some value2"}
puts "Hash2: #{my_hash2}"


title("Exercise 7.6 - SOLUTION")
puts "The first hash that was created used a symbol
      x as the key. The second hash used the
      string value of the x variable as the key."
