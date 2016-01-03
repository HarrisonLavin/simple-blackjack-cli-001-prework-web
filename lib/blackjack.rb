def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card= rand(1..11)
  card
end

def display_card_total(total_value)
  # code #display_card_total here
  puts "Your cards add up to #{total_value}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total_value)
  # code #end_game here
  puts "Sorry, you hit #{total_value}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total=0
  2.times do
    total += deal_card
  end
  display_card_total(total)
  total
end

def hit?(total)
  # code hit? here
  prompt_user
  input= get_user_input
  if input == 's'
    total
  elsif input == 'h'
    total += deal_card
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here'
  welcome
  val = initial_round
  while val < 21
   val = hit?(val)
   display_card_total(val)
  end
end_game(val)
end

