# What is the return value of reject in 
# the following code? Why?

[1, 2, 3].reject do |num
  puts num
end
# 1
# 2
# 3
# => [1, 2, 3]

# reject returns a new array containing 
# items where the block's return value
# is "falsey". If the return value is false
# or nil which is the case with puts, the
# element would be selected.