class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    #@user_score = 0
    #@comp_score = 0

    moves = ["rock", "paper", "scissors"]

    @computer_move = moves.sample

    if @user_move == @computer_move
      @result = "It\'s a tie!"
    elsif @user_move=="paper" && @computer_move =="rock"
      @result = "You win!"
      #@user_score += 1
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "You lose!"
      #@comp_score += 1
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "You win!"
      #@user_score += 1
    elsif @user_move == "rock" && @computer_move == "paper"
      @result =  "You lose!"
      #@comp_score += 1
    elsif @user_move == "scissors" && @computer_move =="paper"
      @result = "You win!"
      #@user_score += 1
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result =  "You lose!"
      #@comp_score += 1
    else
      @result = "That doesn\'t appear to be a valid move."
    end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
