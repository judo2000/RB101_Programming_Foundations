# Having a clear understanding of collections on
# both a conceptual and practical level is a
# fundamental piece of knowledge, both in Ruby
# and programming in general.

# Some particularly important points to rember
# are:

# 1. Some of the most commonly used iterative
#    methods are each, select, and map.  It's
#    important to understand the difference
#    between these methods.

# 2.  Methods called on Ruby collection objects are
#     often used with a block; the return value of
#     the block is passed back to the method on
#     each iteration.  It is important to be 
#     aware of:
#
#     - What the method does with the block's return
#       value.
#     - Wat the ultimate return value of the method
#       is.
#     - Any side-effects that the code in the block
#       may have.
# 3. Ruby provides a lot of other useful methods for
#    working with collections.  It's not necessary to
#    memorize them all at this state but you should:
#
#    - Be aware that they exist and know where to look
#      for them
#    - Know how to read the documentation in order
#      to understand the method's return value, how
#      it uses the block's return value (if it takes
#      a block), and wether the method is destructive.

# At this state you should feel comfortable working
# with collections, particularly using each, select,
# and map, and have a good understanding of how 
# those methods are called with a block.