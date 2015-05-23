require '../OutputFormat.rb'
include Format

title("Exercise 7.4 - ANSWER")
=begin
Given the following expression, how would
you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
=end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]


title("Exercise 7.4 - SOLUTION")
person[:name]
