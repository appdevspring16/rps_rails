class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == @user_move
      @result = "tied"
    elsif @computer_move == "rock" && @user_move == "paper"
      @result = "win"
    elsif @computer_move == "rock" && @user_move == "scissors"
      @result = "lose"
    elsif @computer_move == "paper" && @user_move == "scissors"
      @result = "win"
    elsif @computer_move == "paper" && @user_move == "rock"
      @result = "lose"
    elsif @computer_move == "scissors" && @user_move == "rock"
      @result = "win"
    elsif @computer_move == "scissors" && @user_move == "paper"
      @result = "lose"
    end
render("rps.html.erb")
end
end
