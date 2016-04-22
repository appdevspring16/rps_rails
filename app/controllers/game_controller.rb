class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @@user_move.
    # ===============================================================

    # Rock, Paper, Scissors

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      puts = "tie game. Please play again."

    elsif @user_move == "rock" && @computer_move == "scissors"
        puts = "You win. rock beats scissors. "
    elsif @user_move == "rock" && @computer_move == "paper"
        puts =  "You lose. paper beats rock."
    elsif @user_move == "scissors" && @computer_move == "paper"
        puts = "You win. scissors beats paper. "
    elsif @user_move == "scissor" && @computer_move == "rock"
        puts = "You lose. rock beats scissors. "
    elsif @user_move == "paper" && @computer_move == "rock"
        puts = "You win. paper beats rock."
    else
        puts = "You lose. scissors beats paper. "
    end

  @result = puts

  render ("rps.html.erb")
  end
end
