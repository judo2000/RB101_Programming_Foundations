# Given the Munsters hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male"},
  "Lilly" => { "age" => 30, "gender" => "female"},
  "Grandpa" => { "age" => 402, "gender" => "male"},
  "Eddie" => { "age" => 10, "gender" => "male"},
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the
# Munster family has an additional "age_group" 
# key that has one of three values describing
# the age ground the family member is in 
# (kid, adult, or senior). 

# Note: a kid is in the age range 0-17, and adult is
# in the age range 18-64 and a senior is age 
# 65+

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters