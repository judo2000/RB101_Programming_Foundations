# Add up all of the ages from the Munster
# family hash:

ages = { "Herman" => 32, "lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Option 1
total_ages = 0
ages.each do |key, value|
  total_ages += value
end
puts total_ages

# Option 2 - similar but written differently
total_ages = 0
ages.each { |_,age| total_ages += age }
puts total_ages

# Option 3
total_ages = ages.values.inject(:+)
puts total_ages

# Option 3 uses ages.values to make an array,
# then uses the inject method which is part
# of the Enumerable module.  The straong-looking
# parameter to inject is simply a variety of 
# the inject method which says "apply to + 
# operator to accumulator and object 
# parameters of inject".