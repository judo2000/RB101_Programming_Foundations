# We have most of the Nunster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# add ages for Marilyn and spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

p ages