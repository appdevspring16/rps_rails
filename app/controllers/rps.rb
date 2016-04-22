# Rock, Paper, Scissors


puts  'Welcome to Rock, Paper, Scissors!'
puts  'Please make your selection! Rock, Paper, or Scissors?'

while true
@user_move = gets.chomp
puts "You have played " +user_move.capitalize

choices = ["Rock", "Paper", "Scissors"]

while choices.include?(user_move.downcase.capitalize) == false
    puts "That doesn\'t seem like a valid move."
    puts "Pick again!"
    break
end

@computer_move = choices.sample

puts  'Computer has picked ' +computer

if @user_move.downcase.capitalize == computer

  puts  "Its a tie!"
  puts  ""
  puts "Pick again!"

elsif @user_move.downcase.capitalize == "rock" && computer == "scissor"
  puts  "You Win!"
  puts  ""
  puts "Pick again!"

elsif @user_move.downcase.capitalize == "scissor" && computer == "paper"
  puts "You Win!"
  puts  ""
  puts "Pick again!"

elsif @user_move.downcase.capitalize == "paper" && computer == "rock"
  puts "You Win!"
  puts  ""
  puts "Pick again!"

else
  puts  "You Lose!"

  puts  ""
  puts "Pick again!"

  if @user_move.downcase.capitalize == "Quit"
    break
  end
end
end
