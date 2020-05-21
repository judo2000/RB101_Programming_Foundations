def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers

end

# Note that we are working with a method that
# does not mutate its argument and instead
# returns a new array.  We can call it like so:

my_numbers = [1, 4, 3, 7, 2, 6]
puts double_odd_numbers(my_numbers)

puts 
# not mutated
puts "not mutated #{my_numbers}"
puts

# Try coding a solutio that doubles numbers
# that have odd indicies:

def double_odd_index(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number
    
    counter += 1
  end

  doubled_numbers

end

puts double_odd_index(my_numbers)

puts 
# not mutated
puts "not mutated #{my_numbers}"

