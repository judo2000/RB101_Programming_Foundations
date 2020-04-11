# The results of the following statement will be
# an error

# puts "the value of 40 + 2 is " (40 + 2)

# add .to_s to the end of (40 + 2).to_s
# this converts the answer "42" to a string so 
# it can be concatenated to the string.

puts "the value of 40 + 2 is " + (40 + 2).to_s

# of use string interpolation:

puts "the value of 40 + 2 is #{40 + 2}" 