class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    @computer_move = ["rock", "paper", "scissors"].sample

if @user_move == @computer_move
    @result = "tied"
elsif       
    @user_move == "scissors" && @computer_move == "paper"
    @result = "won"
elsif
    @user_move == "rock" && @computer_move == "scissors"
    @result = "won"
elsif  
    @user_move == "paper" && @computer_move == "rock"
    @result = "won"
else
    @result = "lost"
end
    render("rps.html.erb")
end
end