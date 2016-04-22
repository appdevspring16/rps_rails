class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = ["rock", "paper", "scissors"m "quit"].sample

    @result = "Replace this string with the correct value."

    puts "Welcome to Rock, Paper, Scissors!"

    puts "rock, paper, pr scissors?"

    user_move = gets.chomp

    puts "You chose #{user_move}"

    choices = ["rock", "paper", "scissors"m "quit"]
    if user_move="quit"
      break
    end

    comp = choices[rand(0..2)]

    new = user_move+comp
    if new == "rockscissors"
      puts "You win"
      elseif new == "rockpaper"
      puts"You lose"
      elseif new == "paperscissors"
      puts "You lose"
      elseif new == "paperrock"
      puts "You win"
      elseif new == "scissorsrock"
      puts "You lose"
      elseif new == "scissorspaper"
      puts "You lose"
    else
      puts "Tied"
    end
    puts "Computer chose #{new}"

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
