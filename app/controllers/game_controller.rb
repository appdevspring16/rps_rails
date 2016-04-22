class GameController < ApplicationController
  def rps

    @user_move = params[:the_move]

    @computer_move = ["rock","paper","scissors"].sample

    if @user_move == @computer_move
      @result = "Tied"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "Won"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "Won"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "Won"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "Lost"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "Lost"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "Lost"
    end
    
    render("rps.html.erb")
  end
end
