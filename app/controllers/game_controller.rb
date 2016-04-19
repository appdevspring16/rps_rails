class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================
    @computer_move = ['rock','paper','scissors'].sample

    if user_move == computer_move
      puts "tie!"
    elsif user_move == "paper" && computer_move == "rock"
      puts "you win!"
    elsif user_move == "paper" && computer_move == "scissors"
      puts "you lose!"
    elsif user_move == "scissors" && computer_move == "rock"
      puts "you lose!"
    elsif user_move == "scissors" && computer_move == "paper"
      puts "you win!"
    elsif user_move == "rock" && computer_move == "paper"
      puts "you lose!"
    elsif user_move == "rock" && computer_move == "scissors"
      puts "you win!"
    end





    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = "The computer chose"

    @result = "Replace this string with the correct value."

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
