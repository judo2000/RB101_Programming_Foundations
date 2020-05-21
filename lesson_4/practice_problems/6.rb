# What is the return value of the following
# statement.
# Why?

['ant', 'bear', 'caterpillar'].pop.size
# => 11

# pop destructively removes the last item from
# the array and returns it.  Then size is being
# called on the return value of pop which is
# 'caterpillar' and the size of 'caterpillar'
# is 11 ad in 11 characters long.