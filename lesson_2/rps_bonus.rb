require "yaml"
MESSAGES = YAML.load_file('rps_messages.yml')

COMPUTER_CHOICES = %w(rock paper scissors lizard spock)
VALID_INPUTS = { 'r' => 'rock',
                 'p' => 'paper',
                 'sc' => 'scissors',
                 'l' => 'lizard',
                 'sp' => 'spock' }
RPLS_RULES = { 'rock': ['lizard', 'scisors'],
               'paper': ['rock', 'spock'],
               'scissors': ['paper', 'lizard'],
               'lizard': ['spock', 'paper'],
               'spock': ['scissors', 'rock'] }

def prompt(message)
  puts("=> #{message}")
end

def messages(message)
  MESSAGES[message]
end

def display_game_score(game_score)
  puts "Game Score:"
    game_score.each { |player, score| puts "#{player}: #{score}" }
end

def retreive_choice
  choice = ''
  loop do
    prompt(messages('choice'))
    choice = gets.chomp.downcase

    if VALID_INPUTS.include?(choice)
      break
    else
      prompt(messages('choice_error'))
    end
  end
  converted_choice(choice)
end

def converted_choice(choice)
  converted_choice = ''
  if %w(r).include?(choice)
    converted_choice = 'rock'
  elsif %w(p).include?(choice)
    converted_choice = 'paper'
  elsif %w(sc).include?(choice)
    converted_choice = 'scissors'
  elsif %w(l).include?(choice)
    converted_choice = 'lizard'
  elsif %w(sp).include?(choice)
    converted_choice = 'spock'
  end
  converted_choice
end

def display_results(user_choice, computer_choice)
  puts "You chose: #{user_choice.capitalize}"
    puts "Computer chose: #{computer_choice.capitalize}"
  if RPLS_RULES[(user_choice.to_sym)].include?(computer_choice)
    puts "You won!"
  elsif RPLS_RULES[(computer_choice.to_sym)].include?(user_choice)
    puts "Computer won!"
  else
    puts "It's a tie!"
  end
end

def update_results(game_score, user_choice, computer_choice)
  if RPLS_RULES[(user_choice.to_sym)].include?(computer_choice)
    game_score["User"] += 1
  elsif RPLS_RULES[(computer_choice.to_sym)].include?(user_choice)
    game_score["Computer"] += 1
  end
end

def display_final_score(game_score)
  puts "Final Score:"
  puts "User: #{game_score['User']}"
  puts "Computer: #{game_score['Computer']}"
end

def display_winner(game_score)
  user_score = game_score['User']
  computer_score = game_score['Computer']
  if user_score == 5
    puts "YOU WON!"
  elsif computer_score == 5
    puts "COMPUTER WON!"
  end
end

def clear_screen
  system("clear") || system("cls")
end

def play_again?
  answer = ''
  loop do
    prompt(messages('play_again'))
    answer = gets.chomp.downcase()
    if answer == "y" || answer == "n"
      break
    else
      prompt(messages('calculate_again_error'))
    end
  end
  answer
end

clear_screen
prompt(messages('welcome'))
puts
prompt(messages('instructions'))
puts
prompt("Pres emter to start game...")
gets
loop do
  clear_screen

  game_score = { "User" => 0, "Computer" => 0 }
  loop do
    display_game_score(game_score)
    user_choice = retreive_choice
    computer_choice = COMPUTER_CHOICES.sample
    
    display_results(user_choice, computer_choice)
    update_results(game_score, user_choice, computer_choice)

    break if game_score.value?(5)
  end
  clear_screen
  display_final_score(game_score)
  display_winner(game_score)

  if play_again? == "y"
    clear_screen
  else
    break
  end
end
prompt(messages('thank_you'))
prompt(messages('good_bye'))
