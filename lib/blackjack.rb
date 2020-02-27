def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end

def display_card_total(num)
num < 7
puts "Your cards add up to #{num}"
end

def prompt_user
  puts 'Type \'h\' to hit or \'s\' to stay' 
  
end

def get_user_input
return gets.chomp 
end

def end_game(card_num)
puts "Sorry, you hit #{card_num}. Thanks for playing!"
end

def initial_round
sum = deal_card + deal_card
display_card_total(sum)
return sum
end


def hit?(card_total)
prompt_user
user_input = get_user_input
  if user_input == "s"
     card_total
  elsif user_input =="h"
     card_total = card_total + deal_card
  elsif user_input = nil
  else invalid_command
     hit?(card_total)
  end 
end

def invalid_command
puts "Please enter a valid command"
end
invalid_command

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner(card_total)
welcome
initial_round
hit?(card_total)
display_card_total(card_total)
  unless card_total > 21
    end_game
  end 
end
    
