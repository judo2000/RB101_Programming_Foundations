require "pry"
require "yaml"
MESSAGES = YAML.load_file('calculator_messages.yml')
lang = 'en'

# puts MESSAGES.inspect
def get_language
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

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end



def clear_screen
  system("clear") || system("cls")
end

clear_screen
lang = ''
loop do
  language = get_language
  if valid_language?(language)
    lang = lang_to_message(language)
    break
  else 
    prompt(messages('lang_error'))
  end
end

def operation_to_message(op, lang)
  case op
  when '1'
    messages('add', lang)
  when '2'
    messages('subtract', lang)
  when '3'
    messages('multipling', lang)
  when '4'
    messages('divide', lang)
  end
end
prompt(messages('welcome', lang))

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(messages('valid_name', lang))
  else
    break
  end
end

prompt(messages('hi', lang) + "  #{name}")

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

 
  prompt(messages('operator_prompt', lang))

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operator_error', lang))
    end
  end

  prompt("#{operation_to_message(operator, lang)} the two numbers...")

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

  prompt(messages('another_calculation', lang))
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
  clear_screen
end
prompt(messages('good_bye', lang))
