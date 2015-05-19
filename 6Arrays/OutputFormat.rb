# Formatting begins here.
module Format
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
end
# formatting ends here.
