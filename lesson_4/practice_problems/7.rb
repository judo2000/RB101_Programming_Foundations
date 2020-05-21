# What is the block's return value in the
# following code?  How is it determined?
# Also, what is the return value of any? in
# this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
# 1
# => true

# The return value of the block is determined
# by the return value of the last expression
# within the block.  In this case the last
# statement evaluated is num.odd?, which 
# returns a boolean.  Therefore the block's
# return value will be a boolean, since
# fixnum#odd? can only return true or false.

# Since the Array#any? method returns true if
# the block ever returns a value other than
# false or nil, and the block returns true 
# on the first iteration, we know any? will
# return true.  any? stops iterating after
# the first iteration since there is no need
# to evaluate the remain items in the array;
# therefore puts num is only ever ivoked for
# the first item in the array: 1.