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

    # Rock, Paper, Scissors: Example solution for Version 1

      @computer_move = ["rock", "paper", "scissors"].sample

      if @user_move == @computer_move
        @result = "You tied!"
      elsif @user_move == "paper" && @computer_move == "rock"
        @result = "You win!"
      elsif @user_move == "paper" && @computer_move == "scissors"
        @result = "You lose!"
      elsif @user_move == "scissors" && @computer_move == "rock"
        @result = "You lose!"
      elsif @user_move == "scissors" && @computer_move == "paper"
        @result = "You win!"
      elsif @user_move == "rock" && @computer_move == "paper"
        @result = "You lose!"
      elsif @user_move == "rock" && @computer_move == "scissors"
        @result = "You win!"
      end


    @computer_move

    @result

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
