require '../OutputFormat.rb'
include Format

title("Exercise 7.6 - ANSWER")
=begin

Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams.
Anagrams are words that have the same exact letters in them but
in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]

(etc)

=end
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#result =  words.group_by { |element| element.chars.sort }.values
#puts result

# Program algorithm
# Iterate for every word that's in there.
# Qualify the word by looking at the characters and save it as a key.
#  - If the key is there, add it to the value list.
#  - If not, add as the key.
# Group the values and display it based on the key.

result = {}
words.each do |word|
  key_word = word.chars.sort.join
  if result.has_key?(key_word)
    result[key_word].push(word)
  else
    result[key_word] = [word]
  end
end

result.each do |k,v|
  puts "*******"
  p v
end

title("Exercise 7.6 - SOLUTION")
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end
#puts result
result.each do |k, v|
  puts "------"
  p v
end
