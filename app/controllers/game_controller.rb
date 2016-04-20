class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    choiceArray = ["rock", "paper", "scissors"]

    @computer_move = choiceArray[rand(3)]

    # Human rock / Computer paper
    if @user_move == "rock" && @computer_move == "paper"
      @result = "Lose"
      # Human rock / Computer scissors
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "Win"
      # Human paper / Computer rock
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "Win"
      # Human paper / Computer scissors
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "Lose"
      # Human scissors / Computer rock
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "Lose"
      # Human scissors / Computer paper
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "Win"
    else
      @result = "Tie"
    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
