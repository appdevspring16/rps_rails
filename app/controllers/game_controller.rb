class GameController < ApplicationController
  def rps
    
    @user_move = params[:the_move]

    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      xx = "It's a tie!"
    elsif @user_move == "rock" and @computer_move == "paper"
      xx = "You lose"
    elsif @user_move == "rock" and @computer_move == "scissors"
      xx = "You Win"
    elsif @user_move == "paper" and @computer_move == "rock"
      xx = "You Win"
    elsif @user_move == "paper" and @computer_move == "scissors"
      xx = "You lose"
    elsif @user_move == "scissors" and @computer_move == "paper"
      xx = "You Win"
    elsif @user_move == "scissors" and @computer_move == "rock"
      xx = "You lose"
    else
      xx = "That doesn't seem to be a valid move."
    end


    @result = xx

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
