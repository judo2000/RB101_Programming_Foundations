# In the age hash:

ages = { "Herman" => 32, "lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# remove people with age 100 and greater

ages.keep_if { |_, age| age < 100 }
puts ages