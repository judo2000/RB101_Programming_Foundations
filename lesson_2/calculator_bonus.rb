require "yaml"
MESSAGES = YAML.load_file('calculator_messages.yml')
lang = 'en'

def retrieve_language
  prompt(messages('language', 'en'))
  gets.chomp
end

def valid_language?(lang)
  lang == '1' || lang == '2'
end

def lang_to_message(lang)
  case lang
  when '1'
    'en'
  when '2'
    'es'
  end
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def retrieve_name(lang)
  prompt(messages('name', lang))
  loop do
    name = gets.chomp
    if name.empty? || name.start_with?(' ')
      prompt(messages('valid_name', lang))
    else
      prompt(messages('hi', lang) + " #{name}")
      break
    end
  end
end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def clear_screen
  system("clear") || system("cls")
end

def retrieve_operator(lang)
  prompt(messages('operator_prompt', lang))
  gets.chomp
end

def zero_division(op, num)
  op == '4' && num == '0'
end

def operation_to_message(op, lang)
  case op
  when '1'
    messages('adding', lang)
  when '2'
    messages('subtract', lang)
  when '3'
    messages('multipling', lang)
  when '4'
    messages('divide', lang)
  end
end

def calculate_result(operator, number1, number2, lang)
  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end
  prompt(messages('result', lang) + " #{result}")
end

def continue(lang)
  answer = ''
  loop do
    prompt(messages('continue', lang))
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
lang = ''
loop do
  language = retrieve_language
  if valid_language?(language)
    lang = lang_to_message(language)
    break
  else
    prompt(messages('lang_error'))
  end
end

prompt(messages('welcome', lang))
retrieve_name(lang)

loop do
  number1 = ''
  loop do
    prompt(messages('first_number', lang))
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt(messages('not_valid_num', lang))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number', lang))
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(messages('not_valid_num', lang))
    end
  end
  prompt(messages('another_calculation', lang))

  operator = ''
  loop do
    operator = retrieve_operator(lang)
    if zero_division(operator, number2)
      prompt(messages('zero_division', lang))
      next
    elsif %w(1 2 3 4).include?(operator)
      operation_to_message(operator, lang)
      break
    end
    prompt(messages('operator_error', lang))
  end

  calculate_result(operator, number1, number2, lang)
  if continue(lang) == "y"
    clear_screen
  else
    break
  end
end
prompt(messages('good_bye', lang))
