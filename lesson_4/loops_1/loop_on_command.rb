# Modify the code below so the looop stops
# iterating when the userinputs 'yes'

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp.downcase
  break if answer == 'yes'
  puts 'Incorrectanswer. Please answer "yes"'
end