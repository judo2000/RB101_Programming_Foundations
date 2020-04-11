# Consider these two simple methods

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following
# method invocation?

puts bar(foo)

# "no"

# This is because the value returned from the foo
# method wil always be "yes", and "yes" ==
# "no" will be false.