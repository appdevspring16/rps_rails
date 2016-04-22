# Rock, Paper, Scissors

puts "Welcome to Rock, Paper, Scissors"
puts "Your move: Rock (r,2), Paper (p,1), or Scissors (s,3)? You can also end the game by entering: quit or exit."

wins = 0
losses = 0
ties = 0

while true

  user_move_downcase = gets.chomp
  user_move = user_move_downcase.downcase

  if user_move =="r" || user_move == "2"
    then user_move ="rock"
  elsif user_move =="p" || user_move == "1"
    then user_move ="paper"
  elsif user_move =="s" || user_move == "3"
    then user_move ="scissors"
  elsif user_move =="q" || user_move == "exit" || user_move == "e"
    then user_move ="quit"
  end

  if user_move != "rock" && user_move != "paper" && user_move != "scissors" && user_move != "quit"

    puts "Not a valid entry. Please try again"

    user_move_downcase = gets.chomp
    user_move = user_move_downcase.downcase
  end

  computer_move = ["rock", "paper", "scissors"].sample

  if user_move == computer_move
    user_result = "tie"
    puts " "
    puts "You played #{user_move}"
    puts "Computer played #{computer_move}"
    puts "You and the computer played the same move. It is a tie game."
    puts " "
    puts "Play again: Rock, Paper, or Scissors?"

  elsif user_move == "rock" && computer_move == "scissors"
      then
            user_result = "win"
            puts " "
            puts "You played #{user_move}"
            puts "Computer played #{computer_move}"
            puts "rock beats scissors. You win."
            puts " "
            puts "Play again: Rock, Paper, or Scissors?"
  elsif user_move == "rock" && computer_move == "paper"
      then
            user_result = "loss"
            puts " "
            puts "You played #{user_move}"
            puts "Computer played #{computer_move}"
            puts "paper beats rock. You lose."
            puts " "
            puts "Play again: Rock, Paper, or Scissors?"
  elsif user_move == "scissors" && computer_move == "paper"
      then
            user_result = "win"
            puts " "
            puts "You played #{user_move}"
            puts "Computer played #{computer_move}"
            puts "scissors beats paper. You win."
            puts " "
            puts "Play again: Rock, Paper, or Scissors?"
  elsif user_move == "scissors" && computer_move == "rock"
      then
            user_result = "loss"
            puts " "
            puts "You played #{user_move}"
            puts "Computer played #{computer_move}"
            puts "rock beats scissors. You lose."
            puts " "
            puts "Play again: Rock, Paper, or Scissors?"
  elsif user_move == "paper" && computer_move == "rock"
      then
            user_result = "win"
            puts " "
            puts "You played #{user_move}"
            puts "Computer played #{computer_move}"
            puts "paper beats rock. You win."
            puts " "
            puts "Play again: Rock, Paper, or Scissors?"
  elsif user_move == "rock" && computer_move == "paper"
      then
            user_result = "loss"
            puts " "
            puts "You played #{user_m
            ove}"
            puts "Computer played #{computer_move}"
            puts "paper beats rock. You lose."
            puts " "
            puts "Play again: Rock, Paper, or Scissors?"
  end


  if user_result == "win"
    then wins +=1
  elsif user_result == "loss"
    then losses +=1
  elsif user_result == "tie"
    then ties +=1
  end

  puts "You won #{wins} games and the computer won #{losses} games"
  puts " "

  if user_move == "quit"
    then
          puts " "
          puts "You quit"
    break
  end

end
