# The code below asks the user "What does 2 + 2"
# equal?" and uses #gets to retrieve the user's
# anser.  Modify the code so "That's correct?"
# is printed and theloop stops when the user's
# answer equals 4.  Print "Wrong answer. Try 
# agein!" if the user's answer doesn't equal
# 4.

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wront answer. Try again!"
  end
end
