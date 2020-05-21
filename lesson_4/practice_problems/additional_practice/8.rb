# What happens when we modify an array
# while we are iterating over it?  What
# would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Array is [1, 2, 3, 4] and index is 0
# The number to be removed is 1
# The array after shift is now [2, 3, 4] and index is 0
#------
# Array is [2, 3, 4] and index is 1
# The number to be removed is 3 
#------

# What would be the output of this code?
puts # just to add an empty line
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# To better understand what is happening, we
# augument out loop with some additional
# "debugging" informaton:
puts # just to add an empty line
numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index} #{numbers.inspect} #{number}"
  numbers.shift(1)
end
# The output is:

# "0 [1, 2, 3, 4] 1"
# "1 [2, 3, 4] 3"

# From this we see that our array is being changed
# as we go (shortened and shifted), and the loop
# counter used by #each is compared against the
# current length of the array rather than its 
# original length.

# In our first example, the removal of the first
# item in the first pass changes the value found
# for the second pass.

# In our second example, we are shortening the
# array each pass just as in the first 
# example...but the items removed are beyond the 
# the point we are sampling from in the abbreviated
# loop.

# In both cases we see that iterators DO NOT
# work on a copy of the original array or from
# stale meta-data (length) about the array.  
# They operate on the original array in 
# real time.
