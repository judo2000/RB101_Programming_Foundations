# What is the return value of each_with_object
# in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# =>  {"a" => "ant", "b" => "bear", "c" => "cat" }

# When we invode each_with_object, we
# pass in an object ( {} here) as an argument.
# That object is then passed into the block and 
# its updated value is returned at the end
# of each iteration.  Once each_with_object has
# iterated over the calling collection, it
# returns the initially given object, which
# now contains all of the updates.

# In this code, we start with the hash object
# {}.  On the first iteration, we add "a" => "ant"
# to the hash, and sone on.