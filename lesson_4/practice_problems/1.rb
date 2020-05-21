# What is the return value of the select
# method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end
# => [1, 2, 3]

# select only care about the return value's 
# truithiness.  Since 'hi' is the last 
# evaluated expression it's return value
# is truthy so on each iteration 'hi'
# is truthy so the num is returned.