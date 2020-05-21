# How does count treat the block's return value?
# How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Ruby docs explain that "If a block is given,
# counts the number of elements for which the
# block returns a true value."

# cout only counts an element if the block's
# return value evaluates to true.  This means
# that count considers the truthiness of 
# the block's return value, so it will return
# => 2
# This is because only two of the strings in
# the array have a length of less than 4