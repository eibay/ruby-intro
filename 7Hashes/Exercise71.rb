require '../OutputFormat.rb'
include Format

title("Exercise 7.1 - ANSWER")
# Given
=begin
Given a hash of family members, with keys as the
title and an array of names as the values, use
Ruby's built-in select method to gather only
immediate family members' names into a new
array.

=end

family = {
           uncles:    [ "bob", "joe", "steve" ],
           sisters:   [ "jane", "jill", "beth" ],
           brothers:  [ "frank", "rob", "david" ],
           aunts:     [ "mary", "sally", "susan" ]
         }

a = family.select {|k, v| k == :sisters || k == :brothers }
p a.to_a
p a.values.flatten

sT("Alternative Answer without using select")
a = family[:sisters] + family[:brothers]
p a.to_a


title("Exercise 7.1 - SOLUTION")
immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr
