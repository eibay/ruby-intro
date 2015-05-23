=begin

#require './OutputFormat.rb' if the same directory
#require_relative 'OutputFormat.rb' if in the same directory

#copy and paste to use it.
require '../OutputFormat.rb'
include Format

title("Exercise - ANSWER")

title("Exercise - SOLUTION")

=end

# Formatting begins here.


module Format
def hline
  puts ("-" * 40)
end
def jcenter (string)
  puts string.center(40)
end
def spacer(lines)
  lines.times do puts "" end
end

def title(string)
  spacer(1)
  hline
  jcenter(string)
  hline
end

def sT(string)
  spacer(1)
  puts jcenter(string)
end

end #end of module
# formatting ends here.
