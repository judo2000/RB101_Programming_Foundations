# Alon wrote the following method which was
# intended to show all of the factors of the
# input number
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# Alyssa noticed that this will fail if the input is 0 or
# a negative number, and asked Alan to change
# the loop.
# How can you make this work without using
# begin / end / until?  Note that we're not
# looking to find factors of 0 or negative numbers,
# but we just want to andle it gracefully 
# instead of raising an exception or going
# into an infinite loop.

# Use a while condition for the loop:
# while divisor > 0 do
#   factors << number / divisor if number % divisor == 0
#   divisor -= 1
# end

# Bonus 1:
# What is the purpos of the number % divisor == 0 ?

# Answer:
# Allows you to determine if the result of the
# divison is an integer number (no remainder)

# Bonus 2:
# What is the purpose of the second-to-last line
# (line 8) in the method (the factors before 
# the method's end )?

# Answer:
# It's the return value of the method.  The 
# return value is the last executed line of 
# method unless there is an explicit return value
