require '../OutputFormat.rb'
include Format
=begin
Look at Ruby's merge method. Notice that it has
two versions. What is the difference between
merge and merge!? Write a program that uses
both and illustrate the differences.
=end


title("Exercise 7.2a MERGE - ANSWER")
puts "Merge = non-destructive type of combining
hashes from one hash1 to another hash2 and can
come up with output h3 but the values on both
sources remains the same."
spacer(1)
h1 = { genesis: "adam", kings: "david", prophets: "daniel"}
h2 = { prophets: "isaiah"}
h3 = h1.merge(h2)
puts "Hash1 is still: #{h1}"
puts "Hash2 is still: #{h2}"
puts "Hash3 merge: #{h3}"

title("Exercise 7.2b MERGE! - ANSWER")
puts "MERGE! - destructive type of merging
which is similar to \"update\" in behaviour.
It overwrites the previous value with the
latest one."
spacer(1)
h1 = { genesis: "adam", kings: "david", prophets: "daniel"}
h2 = { prophets: "isaiah"}
h3 = h1.merge!(h2)
puts "Hash1 is now: #{h1}"
puts "Hash2 is still: #{h2}"
puts "Hash3 merge!: #{h3}"



title("Exercise 7.2 - SOLUTION")
puts "The difference is merge! modifies permanently,
while merge does not."
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}
