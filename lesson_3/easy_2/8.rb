# Shorten this sentence:

advice = "Few things in life are as house training your pet dinosaur."

# remove everything starting from "house".
puts advice

advice.slice!(0, advice.index('house'))

puts advice

# As a bonus, what happens if you use the String#slice
# instea of the String#slice! method

# if you use puts infront of:
# puts advice.slice(0, advice.index('house'))
# it will work, but without the "!" it will not
# mutate the caller so if on the next line you
# do puts advice, it will print the original sentence.
