# Let's write a method called select_letter,
# that takes a string and returns a new string
# containing only the letter that we 
# specified.

question = 'How man times does a particular character appear in this sentence?'

def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end

    counter += 1
  end
  
  selected_chars
end

puts select_letter(question, 'a')
puts select_letter(question, 't')
puts select_letter(question, 'z')

# Because select_letter returns a string, if
# we wanted to, we can continue to chain 
# tring methods on a return value.  Suppose
# we wanted to find out how many times a 
# letter occurs in a sentence, we could
# use our method above chained with
# String#size, like so:

puts select_letter(question, 'a').size
puts select_letter(question, 't').size
puts select_letter(question, 'z').size

# Note that now the return value of the entire
# expression is an integer.
