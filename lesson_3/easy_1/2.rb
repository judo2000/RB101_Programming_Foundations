# Describe the difference between ! and ? in Ruby.
# And explain what would happen in the following
# scenarios:

# 1. what is != and where should you use it?  
#    != means is ot equal to
# 2. put ! before something, like !user_name.  
#    !something is used to turn any object into the
#    opposite of their boolean equivalent.
# 3. put ! after something, like words.uniq!
#    something! means it will mutate the caller
# 4. put ? before something
#    ?<something> will return the string representation of <something>
# 5. put ? after something
#    Typically means the method will check to see if something is true
# 6. put !! before something, like !!user_name
#    !!<some object> is used to turn any object into their 
#    bolean equivalent
# If you see ! or ? at the end of a method it's actually
# part of the method name and not Ruby syntax.
# Therefore, you really don't know what the method is doing, 
# even if it end in those characters.

# The other uses are as follows

# != means "not equals"
# ? : is the ternary operator for if..else
# 
# !<some object> is used to turn any object into the
# opposite of their boolean equivalent, just like above but opposite.
