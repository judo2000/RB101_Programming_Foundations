# Let's call a method, and pass both a string
# and an array as parameters and see how even
# though they are treated in the same way by
# Ruby, the results can be different.

# Study the following code and state what will
# be displayed...and why?

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# OUTPUT
#
# My string looks like this now: pumpkins
# My array looks like this now: ["pumpkins", "rutabaga"]

# It appears from the code above that Ruby 
# treats string and array parameters
# differently... but not so fast.  Actually
# the parameters are treated in exactly the
# same way...but the results are different.

# In both cases, Ruby passes the parameter 
# "by value", but unlike some other 
# languages, the value that gets passes is a 
# reference to some object.  The string
# parameter is passed to the method as a 
# reference to an object of type String.
# Similarly, the array is passed to the
# method as a reference to an object of
# type Array.

# The important distinction is that while
# a refernce is passed, the method initializes
# a new local variable for both the string and
# the array and assigns each reference to the
# new local variables.  These are variables that 
# only live within the scope of the method
# definition.

# So if both parameters live inside the method
# as a new variable that stores a reference
# to the passed object...why don't the string
# and the array behave the say way in ouor output?

# The diffence lies in what Ruby does when the
# program executes either a Srring#+= operation
# or an array#<< operation.

# The String#+= operation is re-assignment and
# creates a new String object.  The reference
# to this new object is assigned to a_string_param.
# The local variable a_string_param now points
# to "pumpkinsrutabaga", not "pumpkins".  It
# has been re-assigned by the string#+= operation.
# This means that a_string_param and my_string
# no longer point to the same object.

# With the array, one array object can have
# any number of elements. when we attach
# an additional element to an array using 
# the << operator, Ruby simply keeps using
# the same object that was passed in, and appends
# the new element to it.

# So, because the local variable an_array_param
# sill points to the original object, the local
# variables my_array and an_array_param are
# stil pointing at the same object, and we see
# the result of what happened to the array 
# "outside" of the method.
