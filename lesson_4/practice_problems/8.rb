# How does take work?  Is it destructive?  
# How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)
# => [1, 2]

# take takes the number specified in () and
# creates a new array and addes the, in the 
# case of the code above, first 2 elements to
# the new array.

# As shown in irb it is not destructive so the
# initial array is still in tact.

# irb :001 > arr = [1, 2, 3, 4, 5]
# irb :002 > arr.take(2)
# => [1, 2]
# irb :003 > arr
# => [1, 2, 3, 4, 5]