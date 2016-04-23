class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here



    options = ["Rock", "Paper", "Scissors"]
    
    if @user_move == @computer_move
      result = "It's a tie!"
    elsif @user_move == "Rock" && @computer_move == "Paper"
      result = "You lose!"
    elsif @user_move == "Rock" && @computer_move == "Scissors"
      result = "You win!"
    elsif @user_move == "Paper" && @computer_move == "Rock"
      result = "You win!"
    elsif @user_move == "Paper" && @computer_move == "Scissors"
      result = "You lose!"
    elsif @user_move == "Scissors" && @computer_move == "Rock"
      result = "You lose!"
    elsif @user_move == "Scissors" && @computer_move == "Paper"
      result = "You win!"
    end

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = options.sample

    @result = result

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
