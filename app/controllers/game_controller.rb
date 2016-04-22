class GameController < ApplicationController
  def rps

    @computer_move = ["Rock","Paper","Scissors"].sample

    @user_move = ["Rock","Paper","Scissors"].sample

  #   if user_move.capitalize == moveset[0] or user_move.capitalize == moveset[1] or user_move.capitalize == moveset[2]
  # puts "Valid Move! You Played " + user_move.capitalize

  # cpu_move = moveset[rand(moveset.length)]
  # puts "Computer Played " + cpu_move.capitalize

  if @user_move == @computer_move
    @result = "You Tied"
  elsif @user_move == "Rock" && @computer_move == "Scissors"
    @result = "You Won"
  elsif @user_move == "Scissors" && @computer_move == "Paper"
    @result = "You Won"
  elsif @user_move == "Paper" && @computer_move == "Rock"
    @result = "You Won"
  elsif @user_move == "Rock" && @computer_move == "Paper"
    @result = "You Lost"
  elsif @user_move == "Paper" && @computer_move == "Scissors"
    @result = "You Lost"
  elsif @user_move == "Scissors" && @computer_move == "Rock"
    @result = "You Lost"
  end

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
