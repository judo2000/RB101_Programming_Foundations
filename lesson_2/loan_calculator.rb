require "yaml"
MESSAGES = YAML.load_file("loan_calc_messages.yml")

def prompt(message)
  puts "=> #{message}"
end

def messages(message)
  MESSAGES[message]
end

def get_loan_amount
  prompt(messages('loan_amount'))

  amount = ''
  loop do
    amount = gets.chomp

    if amount.empty? || amount.to_f < 0 || amount.to_f <= 0
      prompt(messages('loan_amount_error'))
    else
      break
    end
  end
  return amount
end

def get_interest_rate
  prompt(messages('interest_rate'))

  interest_rate = ''
  loop do
    interest_rate = gets.chomp

    if interest_rate.empty? || interest_rate.to_f <= 0 
      prompt(messages('interest_rate_error'))
    else
      break
    end
  end
  return interest_rate
end

def get_loan_duration
  prompt(messages('loan_duration'))

  years = ''
  loop do
    years = gets.chomp

    if years.empty? || years.to_i <= 0
      prompt(messages('loan_duration_error'))
    else
      break
    end
  end
  return years
end

def get_monthly_payment(amount, interest_rate, years)
  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))
end

def clear_screen
  system("clear") || system("cls")
end

def continue
  answer = ''
  loop do
    prompt(messages('continue'))
    answer = gets.chomp.downcase()
    if answer == "y" || answer == "n"
      break
    else
      prompt(messages('continue_error'))
    end
  end
  return answer
end

clear_screen
loop do
  prompt(messages('welcome'))
  prompt(messages('dash_line'))

  amount = get_loan_amount
  puts amount
  interest_rate = get_interest_rate
  
  years = get_loan_duration

  monthly_payment = get_monthly_payment(amount, interest_rate, years)

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  if continue == "y"
    clear_screen
  else
    break
  end
end
prompt(messages('thank_you'))
prompt(messages('good_bye'))
