# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# output is:
# 1
# 2
# 2
# 3

# numbers.qniq returned a new Array object
# with unique elements, but it did not modify 
# the numbers object.
# The puts method automatically calls to_s on it argument,
# andthats why you see the output above

#Additional note:   had the last line been p numbers 
# instead, the output would have been 
# [1, 2, 2, 3] because the p method automatically calls
# inspect on its argument