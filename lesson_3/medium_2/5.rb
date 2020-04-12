# Depending on a method to modify its 
# arguments can be tricky:

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what
# we think we wanted "depends" upon what is
# going on inside the method.

# How might we refactor tis practice problem
# to make the result easier to predict and
# easier for the next programmer to maintain?

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# OUTPUT
# My string looks like this now: pumpkinsrutabaga
# My array looks like this now: ["pumpkins", "rutabaga"]

# Ever languate (Ruby included) provides ways
# and means of writing "clevel" code that
# depends on some of the less obvious traits of
# the language.

# Every good programmer practices these 
# tricks...and then avoids them like the plague.

# Clever programmers don't write "clevel" code.
# They write explicit code that is easy to
# read, debug, andmodify as the requirements
# change.