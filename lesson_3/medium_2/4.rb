# To drive that last one home...let's turn
# the tables and have the string show a
# modified output, while the array thwarts
# the method's effort to modify the caller's
# version of it.

def tricky_method_two(a_string_param, and_array_param)
  a_string_param << 'rutababa'
  an_array_param = ['pumkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# OUTPUT
# My string looks like this now: pumpkinsrutababa
# My array looks like this now: ["pumpkins"]

# As you can see, we have achieved the opposite
# effect from our last example.

# We are still passing in the same two string
# and array parameters, but the results are
# the opposite, because our method does the
# "same thing" to each, but in a different way
# than before.  That is, in both cases, the 
# method attempts to change the string from 
# "pumpkins" to "pumpkinsrutabaga" and add 
# "rutabaga" to the array.

# Despite the similarity of the results inside
# the method definition, the results outside 
# the method definition are opposite.

# As before, the explanation is all about what
# Ruby does with local variables when we change
# the object it points to.  Does it create a
# new local variable?  Or is it able to modify
# the existing object?

# With the Array#= assignment, out literal
# ['pumplins', 'rutabaga'] array is a new
# object, and we are assigning it to the local
# variable an_array_param