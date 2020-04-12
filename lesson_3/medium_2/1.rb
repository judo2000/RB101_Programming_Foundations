# Every named entity in Ruby has anobject_id.
# Th is a unique identifier for that object.
#
# It is often the case that two different things
# "look the same", but they can be different objects.
# The "under the hood" object referred to by a 
# particular named-variable can change depending on 
# what is done to that named-variable.
#
# In other words, in Ruby, all values are 
# objects...but they are not always the same
# object.
#
# Predict how the values and object ids will
# change throughout the flow of the code below:
#
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

  1.times do
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
    puts

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    puts "a outer inside after reassignment is #{a_outer} with and id of: #{a_outer_id} before and : #{a_outer.object_id} after."
    puts "b outer inside after reassignment is #{b_outer} with and id of: #{b_outer_id} before and : #{b_outer.object_id} after."
    puts "c outer inside after reassignment is #{c_outer} with and id of: #{c_outer_id} before and : #{c_outer.object_id} after."
    puts "d outer inside after reassignment is #{d_outer} with and id of: #{d_outer_id} before and : #{d_outer.object_id} after."
    puts

    a_inner = a_outer
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    puts "a_inner is #{a_inner} with and an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with and an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with and an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with and an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts
  end

  puts "a_outer is #{a_outer} with and id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with and id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with and id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with and id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
  puts

  puts "a_inner is #{a_inner} with and id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhh"
  puts "b_inner is #{b_inner} with and id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhh"
  puts "c_inner is #{c_inner} with and id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhh"
  puts "d_inner is #{d_inner} with and id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhh"
end

fun_with_ids

# a_outer is 42 with an id of: 85 before before the block.
# b_outer is forty two with an id of: 47440829609320 before before the block.
# c_outer is [42] with an id of: 47440829609300 before before the block.
# d_outer is 42 with an id of: 85 before before the block.

# Notice that Ruby re-used the "42 object with id
# 85" when the value was the same.

# a_outer id was 85 before the block and is: 85 inside the block.
# b_outer id was 47311382589380 before the block and is: 47311382589380 inside the block.
# c_outer id was 47311382589360 before the block and is: 47311382589360 inside the block.
# d_outer id was 85 before the block and is: 85 inside the block.

# Notice that Ruby did NOT change the id of any
# of the objects betwen outside and inside
# the block

# a outer inside after reassignment is 22 with and id of: 85 before and : 45 after.
# b outer inside after reassignment is thirty three with and id of: 47311382589380 before and : 47311382587620 after.
# c outer inside after reassignment is [44] with and id of: 47311382589360 before and : 47311382587360 after.
# d outer inside after reassignment is 44 with and id of: 85 before and : 89 after.

# Notice that change the values has forced Ruby
# to create new objects and refer to them with the
# original variable names.

# a_inner is 22 with and an id of: 45 inside the block (compared to 45 for outer).
# b_inner is thirty three with and an id of: 47311382587620 inside the block (compared to 47311382587620 for outer).
# c_inner is [44] with and an id of: 47311382587360 inside the block (compared to 47311382587360 for outer).
# d_inner is 44 with and an id of: 89 inside the block (compared to 89 for outer).

# Notice that Ruby re-uses the objects under
# the hood when it can, but uses different ones
# for different values

# a_outer is 22 with and id of: 85 BEFORE and: 45 AFTER the block.
# b_outer is thirty three with and id of: 47311382589380 BEFORE and: 47311382587620 AFTER the block.
# c_outer is [44] with and id of: 47311382589360 BEFORE and: 47311382587360 AFTER the block.
# d_outer is 44 with and id of: 85 BEFORE and: 89 AFTER the block.

# ugh ohhhh
# ugh ohhhh
# ugh ohhhh
# ugh ohhhh

# Notice that once we leave the block, those
# variables that were defined inside the block
# lose their meaning.