# What does shift do in the following code. 
# How can we find out.

hash = { a: 'ant', b: 'bear' }
hash.shift
# => ['a','ant']

# shift remvoes the a key value pair from the
# hash and returns it as a two item array or
# the hash's default value if the hash is empty.

# shift is destructive so the hash above wiould
# only have b: => 'bear' remaining.