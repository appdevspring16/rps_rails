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
    # Rock, Paper, Scissors


    @options = ["rock","paper","scissors"].sample

    if @user_move == @options
      @result = "We tied!"
    elsif @user_move == "paper" && @options == "rock"
      @result = "You win!"
    elsif @user_move == "paper" && @options == "scissors"
      @result = "You lose!"
    elsif @user_move == "scissors" && @options == "rock"
      @result = "You lose!"
    elsif @user_move == "scissors" && @options == "paper"
      @result = "You win!"
    elsif @user_move == "rock" && @options == "scissors"
      @result = "You win!"
    elsif @user_move == "rock" && @options == "paper"
      @result = "You lose!"
    else
      @result = "I said pick rock, paper, or scissors!"
    end


    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
