def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    # used to be current_value == 'fruit'
    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce

end

# To use the above general_select method, we
# have to pass in a collection and some 
# selection criteria.  In this specific case,
# the criteria is hardcoded to match with a
# value: if ther's a match betwen the criteria and
# value
# then the current key-value pair is selected
# into the selected_produce hash.  Here's how
# we can use this method:

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'brocoli' => 'Vegetable'
}

puts general_select(produce, 'Fruit')
puts
puts general_select(produce, 'Vegetable')
puts general_select(produce, 'Meat')

# NOTE: We chose not to name the method 
# select becaus of the collision with
# Kerrnel#select, which does something
# completely different that what we're
# talking about here with collections.