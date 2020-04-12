# Let's look at object id's again from the
# perspective of a method call instead of a
# block

# Here we haven't changed ANY of the code
# outside or inside of the block/method.  We 
# simply took the contents of the block from 
# previous practice problem and moved it to
# a method, to which we are passing all of our 
# outer variables.

# Predict how the values and object ids will
# change throughout the flow of the code below:

def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id
  
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before before the block."
  puts

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call."
  puts

  puts "a_inner is #{a_inner} with an id of #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhh"
  puts "b_inner is #{b_inner} with an id of #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhh"
  puts "c_inner is #{c_inner} with an id of #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhh"
  puts "d_inner is #{d_inner} with an id of #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhh"
  puts
end

def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
  a_outer_inner_id = a_outer.object_id
  b_outer_inner_id = b_outer.object_id
  c_outer_inner_id = c_outer.object_id
  d_outer_inner_id = d_outer.object_id

  puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method."
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method."
  puts

  a_outer = 22
  b_outer = "thirty three"
  c_outer = [44]
  d_outer = c_outer[0]

  puts "a outer inside after reassignment is #{a_outer} with and id of: #{a_outer_id} before and: #{a_outer.object_id} after."
  puts "b outer inside after reassignment is #{b_outer} with and id of: #{b_outer_id} before and: #{b_outer.object_id} after."
  puts "c outer inside after reassignment is #{c_outer} with and id of: #{c_outer_id} before and: #{c_outer.object_id} after."
  puts "d outer inside after reassignment is #{d_outer} with and id of: #{d_outer_id} before and: #{d_outer.object_id} after."
  puts

  a_inner = a_outer
  b_inner = b_outer
  c_inner = c_outer
  d_inner = c_inner[0]

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id

  puts "a_inner is #{a_inner} with and an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)."
  puts "b_inner is #{b_inner} with and an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)."
  puts "c_inner is #{c_inner} with and an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)."
  puts "d_inner is #{d_inner} with and an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)."
  puts
end

fun_with_ids

# a_outer is 42 with an id of: 85 before before the block.
# b_outer is forty two with an id of: 47157813606100 before before the block.
# c_outer is [42] with an id of: 47157813606080 before before the block.
# d_outer is 42 with an id of: 85 before before the block.

# Notice that this works the same as before. No
# big surprise.

# a_outer id was 85 before the method and is: 85 inside the method.
# b_outer id was 47157813606100 before the method and is: 47157813606100 inside the method.
# c_outer id was 47157813606080 before the method and is: 47157813606080 inside the method.
# d_outer id was 85 before the method and is: 85 inside the method.

# This is also the same as before.  These "outers" are
# NOT the same variables as the outside, Ruby
# is simply re-using the objects, as these new
# variables have the same values as the ones
# outside.

# a outer inside after reassignment is 22 with and id of: 85 before and: 45 after.
# b outer inside after reassignment is thirty three with and id of: 47157813606100 before and: 47157813605300 after.
# c outer inside after reassignment is [44] with and id of: 47157813606080 before and: 47157813605280 after.
# d outer inside after reassignment is 44 with and id of: 85 before and: 89 after.

# As before with the block version of this practice
# problem, when we change the values of our
# "outers", Ruby uses new objects for these
# variables to deal with their new values.

# One important difference to note is that
# before, we saw Ruby re-using the "42" object
# and just giving it a new value inside the block.
# Why the difference?  It should become clear a 
# couple of paragraphs later in this solution...

# a_inner is 22 with and an id of: 45 inside the method (compared to 45 for outer).
# b_inner is thirty three with and an id of: 47157813605300 inside the method (compared to 47157813605300 for outer).
# c_inner is [44] with and an id of: 47157813605280 inside the method (compared to 47157813605280 for outer).
# d_inner is 44 with and an id of: 89 inside the method (compared to 89 for outer).

# No big surprise here...Ruby is re-using objects
# that hae the same values...

# a_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.
# b_outer is forty two with an id of: 47157813606100 BEFORE and: 47157813606100 AFTER the method call.
# c_outer is [42] with an id of: 47157813606080 BEFORE and: 47157813606080 AFTER the method call.
# d_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.

# Wow, look at that. Even though we changed the
# values of our "outer" variables inside the 
# method call, we stil have the same values and
# the same object id's down here AFTER the method
# call as we had before it!

# This is because our method call accepts 
# VALUES as parameters.  The names we give
# to those values in the definition of our 
# method are SEPARATE from any other use of
# those same names.

# We used the same names there for convenience
# (and admittedly to build some suspence and
# allow us to clarify this point).  We could just
# as easily have called the first parameter of our
# method definition a_Fred instead of a_outer.

# The method gets the VALUES of the parameters
# we pass, but the parameter variables inside
# the method have no other relationship to
# those outside of the method.  The names 
# were coincidental, and confusing in a 
# useful way.

# ugh ohhhh
# ugh ohhhh
# ugh ohhhh
# ugh ohhhh

# Our main method STILL has no access to
# variables that are defined inside of the
# method.