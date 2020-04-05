# in this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spt" is present

puts ages.key?("Spot")

# bonus

# include was the one I initially thought of
puts ages.include?("Spot")
puts ages.member?("Spot")