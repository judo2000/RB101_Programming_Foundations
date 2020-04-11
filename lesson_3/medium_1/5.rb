# Alyssa asked Ben to write up a basic implementation
# of a Fibonacci calculator.  A user pases in two
# numbers, and the calculator will keep computing
# the sequence until some limit is reached
#
#
# Ben coded up this implementation but complained
# that as soon as he ran it, he got an error.
# Something about the limit variable.
# What's wront with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# limit is defined before the method and is not
# included as an argument to the method. 
# fib is a method and does not have access to
# variables (limit) outside of its scope.
#All Ben would need to do is include limit in the
# list of arguments when declaring the method.
