def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # you start with 2 cards
  card_num = 0
  total = 0
  while card_num < 2
    total += deal_card
    card_num += 1
  end
  display_card_total(total) # has to print the sum
  return total # ends method // returns the sum
end

def hit?(total)
  prompt_user
  play = get_user_input
  if play == 'h'
    total += deal_card
    return total
  elsif play == 's'
    return total
  else
    invalid_command
    prompt_user
    play = get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  bust = 21
  total = initial_round
  until total > bust
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
