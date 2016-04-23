class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your loputs "Welcome to Rock, Paper, Scissors!"
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = "The computer chose #{@computer_move}."

    if @computer_move == @user_move
      @result = "It's a tie!"
    elsif @computer_move == "paper" && @user_move == "rock"
    @result = "lose!"
  elsif @computer_move == "paper" && @user_move == "scissors"
    @result = "win!"
  elsif @computer_move == "scissors" && @user_move == "rock"
    @result = "win!"
  elsif @computer_move == "scissors" && @user_move == "paper"
    @result = "lose!"
  elsif @computer_move == "rock" && @user_move == "paper"
    @result = "win!"
  elsif @computer_move == "rock" && @user_move == "scissors"
    @result = "lose!"
    end

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
