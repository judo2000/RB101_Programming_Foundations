# The code below multiples each element in
# the collection by 2.

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]

p double_numbers(my_numbers)
p my_numbers

# If we wanted to, we could've easily decided
# that mutating the method arguments is the
# right approach.  Can you implement a 
# double_numbers! method that mutates its argument?

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end

p double_numbers!(my_numbers)
p my_numbers

# Rather than returning a new array, this
# method returns a reference to the
# (mutated) original array

# Lines 36 and 37 can be shortened to 1 lie
# numbers[counter] = numbers[counter] * 2.
# This, in turn, can be further condensed to
# numbers[counter] *= 2.